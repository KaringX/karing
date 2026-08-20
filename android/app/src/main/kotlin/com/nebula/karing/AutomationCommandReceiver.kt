package com.nebula.karing

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.os.Build
import java.io.File
import java.util.concurrent.ConcurrentHashMap
import org.json.JSONObject

class AutomationCommandReceiver : BroadcastReceiver() {
    companion object {
        const val ACTION_CONNECT = "com.nebula.karing.action.CONNECT"
        const val ACTION_DISCONNECT = "com.nebula.karing.action.DISCONNECT"
        const val ACTION_RECONNECT = "com.nebula.karing.action.RECONNECT"
    }
    private fun serviceFile(context: Context): File {
        return File(context.filesDir, io.nebula.vpn_service.VpnServiceImpl.service_file_name)
    }

    override fun onReceive(context: Context, intent: Intent?) {
        val senderPackage =
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE) {
                    getSentFromPackage()
                } else {
                    null
                }
        if (senderPackage != null) {
            var allowedSenderPackagesSet: MutableSet<String> = ConcurrentHashMap.newKeySet()
            try {
                val content = serviceFile(context).readText()
                if (content.isNotBlank()) {
                    val jsonObj = JSONObject(content)
                    val allowedSenderPackages = jsonObj.optJSONArray("allowed_sender_packages")
                    if (allowedSenderPackages != null) {
                        for (i in 0 until allowedSenderPackages.length()) {
                            val item = allowedSenderPackages.optString(i)
                            if (item.isNotBlank()) {
                                allowedSenderPackagesSet.add(item)
                            }
                        }
                    }
                }
            } catch (e: Exception) {}
            if (allowedSenderPackagesSet.isNotEmpty() &&
                            !allowedSenderPackagesSet.contains(senderPackage)
            ) {
                return
            }
        }

        val action = intent?.action ?: return
        when (action) {
            ACTION_CONNECT -> connect(context)
            ACTION_DISCONNECT -> disconnect(context)
            ACTION_RECONNECT -> reconnect(context)
        }
    }

    private fun connect(context: Context) {
        val serviceIntent = createServiceIntent(context)
        serviceIntent.action = io.nebula.vpn_service.VpnServiceImpl.ACTION_START
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            context.startForegroundService(serviceIntent)
        } else {
            context.startService(serviceIntent)
        }
    }

    private fun disconnect(context: Context) {
        val serviceIntent = createServiceIntent(context)
        serviceIntent.action = io.nebula.vpn_service.VpnServiceImpl.ACTION_STOP
        context.startService(serviceIntent)
    }

    private fun reconnect(context: Context) {
        disconnect(context)
        connect(context)
    }

    private fun createServiceIntent(context: Context): Intent {
        val serviceIntent = Intent()
        serviceIntent.setClassName(
                context.packageName,
                io.nebula.vpn_service.VpnServiceImpl::class.java.name
        )
        serviceIntent.putExtra("actionBy", "automation")
        serviceIntent.putExtra("source", "broadcast")
        return serviceIntent
    }
}
