package com.nebula.karing

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
        MainChannelManager.init(flutterEngine)
        MainChannelManager.registerCallback(
                "getCommand",
                { _: Map<String, *>, result: MethodChannel.Result ->
                    var command: String? = null
                    val intent = getIntent()
                    if (intent != null) {
                        command = intent.getStringExtra("command")
                    }
                    result.success(command)
                }
        )
    }
}
