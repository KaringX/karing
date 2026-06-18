package com.nebula.karing

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.os.Build

class AutomationCommandReceiver : BroadcastReceiver() {
    companion object {
        const val ACTION_CONNECT = "com.nebula.karing.action.CONNECT"
        const val ACTION_DISCONNECT = "com.nebula.karing.action.DISCONNECT"
        const val ACTION_RECONNECT = "com.nebula.karing.action.RECONNECT"
    }

    override fun onReceive(context: Context, intent: Intent?) {
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
