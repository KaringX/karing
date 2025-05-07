package com.nebula.karing

import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import java.util.TreeMap

public class MainChannelManager : MethodCallHandler {
    companion object {
        private var sharedInstance: MainChannelManager? = null

        public fun init(flutterEngine: FlutterEngine) {
            if (sharedInstance == null) {
                sharedInstance = MainChannelManager()
                sharedInstance?.initChannels(flutterEngine)
            }
        }

        public fun uninit() {
            if (sharedInstance != null) {
                sharedInstance?.uninitChannels()
                sharedInstance = null
            }
        }

        public fun isInited(): Boolean {
            if (sharedInstance == null) {
                return false
            }
            return true
        }

        public fun sendEvent(
                event: String,
                args: Map<String, String>?,
                result: MethodChannel.Result,
        ): Boolean {
            if (sharedInstance == null) {
                return false
            }
            sharedInstance?.channel?.invokeMethod(event, args, result)
            return true
        }

        public fun registerCallback(
                method: String,
                callback: (args: Map<String, *>, result: MethodChannel.Result) -> Unit,
        ) {
            sharedInstance?.callbackMap?.put(method, callback)
        }
    }

    private lateinit var channel: MethodChannel
    private var callbackMap =
            TreeMap<String, (args: Map<String, *>, result: MethodChannel.Result) -> Unit>()

    private fun initChannels(flutterEngine: FlutterEngine) {
        channel = MethodChannel(flutterEngine.getDartExecutor(), "channel_main_method")
        channel.setMethodCallHandler(this)
    }

    private fun uninitChannels() {
        channel?.setMethodCallHandler(null)
    }

    override fun onMethodCall(
            call: MethodCall,
            result: MethodChannel.Result,
    ) {
        val callback = callbackMap.get(call.method)
        if (callback == null) {
            result.success(null)
            return
        }
        callback.invoke(call.arguments as Map<String, *>, result)
    }
}
