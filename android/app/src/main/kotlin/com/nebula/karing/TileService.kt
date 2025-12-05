package com.nebula.karing

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.Build
import android.service.quicksettings.Tile
import android.service.quicksettings.TileService
import androidx.annotation.RequiresApi
import java.io.File

@RequiresApi(24)
class TileService : TileService() {
    private var receiverRegistered = false
    private val receiver =
            object : BroadcastReceiver() {
                override fun onReceive(
                        context: Context,
                        intent: Intent,
                ) {
                    when (intent.action) {
                        io.nebula.vpn_service.VpnServiceImpl.ACTION_START_RESULT -> {
                            update()
                        }
                        io.nebula.vpn_service.VpnServiceImpl.ACTION_STOPED -> {
                            update()
                        }
                        io.nebula.vpn_service.VpnServiceImpl.ACTION_STATE -> {
                            update()
                        }
                    }
                }
            }

    override fun onCreate() {
        if (!receiverRegistered) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                var intentFilter = IntentFilter()
                intentFilter.addAction(io.nebula.vpn_service.VpnServiceImpl.ACTION_STOPED)
                intentFilter.addAction(io.nebula.vpn_service.VpnServiceImpl.ACTION_START_RESULT)
                intentFilter.addAction(io.nebula.vpn_service.VpnServiceImpl.ACTION_STATE)
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                    registerReceiver(receiver, intentFilter, Context.RECEIVER_EXPORTED)
                } else {
                    registerReceiver(receiver, intentFilter)
                }
                receiverRegistered = true
            }
        }
        super.onCreate()
    }

    override fun onDestroy() {
        if (receiverRegistered) {
            receiverRegistered = false
            unregisterReceiver(receiver)
        }
        super.onDestroy()
    }

    override fun onClick() {
        val state = io.nebula.vpn_service.VpnServiceImpl.getCurrentState()
        if ((state != io.nebula.vpn_service.VpnState.CONNECTED) &&
                        (state != io.nebula.vpn_service.VpnState.DISCONNECTED)
        ) {
            return
        }
        var intent = Intent()
        intent.setClassName(getPackageName(), io.nebula.vpn_service.VpnServiceImpl::class.java.name)
        intent.putExtra("actionBy", "tile")
        if (state == io.nebula.vpn_service.VpnState.CONNECTED) {
            intent.setAction(io.nebula.vpn_service.VpnServiceImpl.ACTION_STOP)
            startService(intent)
        } else {
            intent.setAction(io.nebula.vpn_service.VpnServiceImpl.ACTION_START)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                startForegroundService(intent)
            } else {
                startService(intent)
            }
        }

        update()
    }

    override fun onTileRemoved() {
        super.onTileRemoved()
    }

    override fun onTileAdded() {
        super.onTileAdded()
        update()
    }

    override fun onStartListening() {
        super.onStartListening()
        update()
    }

    override fun onStopListening() {
        super.onStopListening()
    }

    private fun isValid(): Boolean {
        return profileFile().exists() && serviceFile().exists()
    }

    private fun update() {
        var active: Boolean?
        if (!isValid()) {
            active = null
        } else {
            val state = io.nebula.vpn_service.VpnServiceImpl.getCurrentState()
            if (state == io.nebula.vpn_service.VpnState.CONNECTED) {
                active = true
            } else if (state == io.nebula.vpn_service.VpnState.DISCONNECTED) {
                active = false
            } else {
                active = null
            }
        }
        qsTile?.apply {
            state =
                    when (active) {
                        true -> Tile.STATE_ACTIVE
                        false -> Tile.STATE_INACTIVE
                        else -> Tile.STATE_UNAVAILABLE
                    }
            updateTile()
        }
    }

    private fun serviceFile(): File {
        val context = this as Context
        return File(context.getFilesDir(), io.nebula.vpn_service.VpnServiceImpl.service_file_name)
    }

    private fun profileFile(): File {
        val context = this as Context
        return File(context.getFilesDir(), io.nebula.vpn_service.VpnServiceImpl.profile_file_name)
    }

    private fun writeLog(message: String) {
        print("TileService writeLog: $message\n")
    }
}
