package com.nebula.karing

import android.app.Activity
import android.app.AlertDialog
import android.content.Context
import android.text.InputType
import android.view.WindowManager
import android.view.inputmethod.EditorInfo
import android.view.inputmethod.InputMethodManager
import android.widget.EditText
import android.widget.ArrayAdapter
import android.widget.AutoCompleteTextView
import android.widget.Filter
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import java.util.Locale

/** Native editor for the existing Android TV popup-edit mode. */
class TvTextInputPlugin : FlutterPlugin, ActivityAware, MethodChannel.MethodCallHandler {
    private var channel: MethodChannel? = null
    private var activity: Activity? = null
    private var dialog: AlertDialog? = null

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(binding.binaryMessenger, "com.nebula.karing/tv_text_input")
        channel?.setMethodCallHandler(this)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        dialog?.dismiss()
        channel?.setMethodCallHandler(null)
        channel = null
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        onAttachedToActivity(binding)
    }

    override fun onDetachedFromActivityForConfigChanges() = onDetachedFromActivity()

    override fun onDetachedFromActivity() {
        dialog?.dismiss()
        activity = null
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        if (call.method != "edit") {
            result.notImplemented()
            return
        }
        val owner = activity
        if (owner == null || owner.isFinishing || owner.isDestroyed) {
            result.error("ACTIVITY_UNAVAILABLE", "No active input window", null)
            return
        }
        if (dialog != null) {
            result.error("INPUT_BUSY", "An editor is already open", null)
            return
        }
        val configuration = call.argument<Map<String, Any?>>("configuration").orEmpty()
        val value = call.argument<Map<String, Any?>>("value").orEmpty()
        val type = configuration["inputType"] as? Map<*, *>
        val multiline = type?.get("name") == "TextInputType.multiline"
        val candidates = call.argument<List<String>>("suggestions").orEmpty()
        val inputView = if (candidates.isEmpty() || configuration["obscureText"] == true) {
            EditText(owner)
        } else {
            AutoCompleteTextView(owner).apply {
                threshold = 1
                setAdapter(SuggestionsAdapter(owner, candidates))
            }
        }
        val editor = inputView.apply {
            isSingleLine = !multiline
            // setSingleLine replaces the transformation; apply password masking last.
            inputType = inputTypeFor(configuration)
            if (multiline) maxLines = 4
            imeOptions = EditorInfo.IME_FLAG_NO_EXTRACT_UI or EditorInfo.IME_ACTION_DONE
            if (configuration["obscureText"] == true ||
                configuration["enableIMEPersonalizedLearning"] == false) {
                imeOptions = imeOptions or EditorInfo.IME_FLAG_NO_PERSONALIZED_LEARNING
            }
            hint = call.argument<String>("hint")
            setText(value["text"] as? String ?: "")
            val base = (value["selectionBase"] as? Number)?.toInt() ?: text.length
            val extent = (value["selectionExtent"] as? Number)?.toInt() ?: base
            if (base < 0 || extent < 0) {
                setSelection(text.length)
            } else {
                setSelection(base.coerceAtMost(text.length), extent.coerceAtMost(text.length))
            }
            val padding = (24 * resources.displayMetrics.density).toInt()
            setPadding(padding, padding, padding, padding)
        }
        var answer: Map<String, Any?>? = null
        val prompt = AlertDialog.Builder(owner)
            .setTitle(call.argument<String>("title"))
            .setView(editor)
            .setPositiveButton(android.R.string.ok) { _, _ ->
                answer = mapOf(
                    "text" to editor.text.toString(),
                    "selectionBase" to editor.selectionStart,
                    "selectionExtent" to editor.selectionEnd,
                    "selectionAffinity" to "TextAffinity.downstream",
                    "selectionIsDirectional" to false,
                    "composingBase" to -1,
                    "composingExtent" to -1,
                )
            }
            .setNegativeButton(android.R.string.cancel, null)
            .create()
        prompt.setOnDismissListener {
            dialog = null
            result.success(answer)
        }
        editor.setOnEditorActionListener { _, action, _ ->
            if (action == EditorInfo.IME_ACTION_DONE) {
                prompt.getButton(AlertDialog.BUTTON_POSITIVE).performClick()
                true
            } else {
                false
            }
        }
        editor.requestFocus()
        prompt.window?.setSoftInputMode(
            WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_VISIBLE or
                WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE,
        )
        dialog = prompt
        prompt.show()
        editor.post {
            if (prompt.isShowing && editor.hasFocus()) {
                val manager = owner.getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
                manager.showSoftInput(editor, InputMethodManager.SHOW_IMPLICIT)
            }
        }
    }

    private fun inputTypeFor(configuration: Map<String, Any?>): Int {
        val type = configuration["inputType"] as? Map<*, *>
        if (configuration["obscureText"] == true) {
            return InputType.TYPE_CLASS_TEXT or InputType.TYPE_TEXT_VARIATION_PASSWORD
        }
        val inputType = when (type?.get("name")) {
            "TextInputType.number" -> InputType.TYPE_CLASS_NUMBER or
                (if (type["signed"] == true) InputType.TYPE_NUMBER_FLAG_SIGNED else 0) or
                (if (type["decimal"] == true) InputType.TYPE_NUMBER_FLAG_DECIMAL else 0)
            "TextInputType.phone" -> InputType.TYPE_CLASS_PHONE
            "TextInputType.datetime" -> InputType.TYPE_CLASS_DATETIME
            "TextInputType.emailAddress" -> InputType.TYPE_CLASS_TEXT or InputType.TYPE_TEXT_VARIATION_EMAIL_ADDRESS
            "TextInputType.url" -> InputType.TYPE_CLASS_TEXT or InputType.TYPE_TEXT_VARIATION_URI
            "TextInputType.visiblePassword" -> InputType.TYPE_CLASS_TEXT or InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD
            "TextInputType.multiline" -> InputType.TYPE_CLASS_TEXT or InputType.TYPE_TEXT_FLAG_MULTI_LINE
            else -> InputType.TYPE_CLASS_TEXT
        }
        if (inputType and InputType.TYPE_MASK_CLASS != InputType.TYPE_CLASS_TEXT) return inputType
        val capitalization = when (configuration["textCapitalization"]) {
            "TextCapitalization.characters" -> InputType.TYPE_TEXT_FLAG_CAP_CHARACTERS
            "TextCapitalization.words" -> InputType.TYPE_TEXT_FLAG_CAP_WORDS
            "TextCapitalization.sentences" -> InputType.TYPE_TEXT_FLAG_CAP_SENTENCES
            else -> 0
        }
        val suggestions = if (configuration["enableSuggestions"] == false) {
            InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS
        } else if (configuration["autocorrect"] == true) {
            InputType.TYPE_TEXT_FLAG_AUTO_CORRECT
        } else {
            0
        }
        return inputType or capitalization or suggestions
    }

    private class SuggestionsAdapter(context: Context, private val candidates: List<String>) :
        ArrayAdapter<String>(context, android.R.layout.simple_dropdown_item_1line) {
        private var matches = emptyList<String>()
        override fun getCount() = matches.size
        override fun getItem(position: Int) = matches[position]
        override fun getFilter(): Filter = object : Filter() {
            override fun performFiltering(constraint: CharSequence?): FilterResults {
                val keyword = constraint?.toString()?.trim()?.lowercase(Locale.ROOT).orEmpty()
                val filtered = if (keyword.isEmpty()) emptyList() else candidates.filter {
                    it.lowercase(Locale.ROOT).contains(keyword)
                }.take(20)
                return FilterResults().apply {
                    values = filtered
                    count = filtered.size
                }
            }

            override fun publishResults(constraint: CharSequence?, results: FilterResults?) {
                matches = (results?.values as? List<*>)?.filterIsInstance<String>().orEmpty()
                notifyDataSetChanged()
            }
        }
    }
}
