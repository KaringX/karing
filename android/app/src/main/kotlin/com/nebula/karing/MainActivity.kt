package com.nebula.karing

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugins.GeneratedPluginRegistrant
import java.util.Locale

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
        MainChannelManager.init(flutterEngine)
        MainChannelManager.registerCallback(
                "getCommand",
                { _: Map<String, *>, result: MethodChannel.Result ->
                    result.success(resolveCommand())
                }
        )
    }

    private fun resolveCommand(): String? {
        val intent = intent ?: return null
        val commandFromExtra = intent.getStringExtra("command")
        val command = normalizeCommand(commandFromExtra)
        if (command != null) {
            return command
        }
        val host = intent.data?.host
        return normalizeCommand(host)
    }

    private fun normalizeCommand(raw: String?): String? {
        if (raw.isNullOrBlank()) {
            return null
        }
        return when (raw.lowercase(Locale.ROOT)) {
            "connect" -> "connect"
            "disconnect" -> "disconnect"
            "reconnect" -> "reconnect"
            else -> null
        }
    }
}
