package com.nebula.karing

import android.app.ActivityManager
import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.Build
import android.service.quicksettings.Tile
import android.service.quicksettings.TileService
import androidx.annotation.RequiresApi
import java.io.File
import org.json.JSONObject

@RequiresApi(24)
class TileService : TileService() {
    companion object {
        const val profile_file_name = "vpn_profile.txt"
        const val service_file_name = "service.json"
        const val service_class_name = "io.nebula.vpn_service.VpnServiceImpl"
        const val ACTION_START = "vpn.service.START"
        const val ACTION_STOP = "vpn.service.STOP"
        const val ACTION_STOPED = "vpn.service.STOPED"
        const val ACTION_START_RESULT = "vpn.service.START_RESULT"
    }

    private var receiverRegistered = false
    private val receiver =
            object : BroadcastReceiver() {
                override fun onReceive(
                        context: Context,
                        intent: Intent,
                ) {
                    when (intent.action) {
                        ACTION_START_RESULT -> {
                            val err = intent.getStringExtra("err")
                            updateTile(err == "")
                        }
                        ACTION_STOPED -> {
                            updateTile(false)
                        }
                    }
                }
            }

    override fun onCreate() {
        if (!receiverRegistered) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                var intentFilter = IntentFilter()
                intentFilter.addAction(ACTION_STOPED)
                intentFilter.addAction(ACTION_START_RESULT)
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
        if (isRuning()) {
            var intent = Intent().apply { action = ACTION_STOP }
            intent.setClassName(getPackageName(), service_class_name)
            intent.putExtra("exitProcess", true)
            startService(intent)
            // stopService(intent)
            updateTile(false)
            return
        }

        try {
            val content = serviceFile().readText()
            if (!content.isBlank()) {
                val jsonObj = JSONObject(content)
                val expired_time = jsonObj.getLong("expired_time")
                val currentTimestamp = System.currentTimeMillis()
                if (currentTimestamp < expired_time) {
                    updateTile(true)
                    startByService()
                    return
                }
            }
        } catch (e: Exception) {
            var stackTrace = e.getStackTrace().joinToString(separator = "\n")
            writeLog("TileService onClick: exception: $e \n$stackTrace")
        }
        updateTile(true)
        startBy()
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
        if (isRuning()) {
            updateTile(true)
            return
        }
        val valid = if (isValid()) false else null
        updateTile(valid)
    }

    private fun updateTile(active: Boolean?) {
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

    private fun startByService() {
        var intent = Intent().apply { action = ACTION_START }
        intent.setClassName(getPackageName(), service_class_name)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            startForegroundService(intent)
        } else {
            startService(intent)
        }
    }

    private fun startByLaunch() {
        var intent = Intent()
        intent.setClassName(getPackageName(), MainActivity::class.java.name)
        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        intent.putExtra("command", "connect")
        if (Build.VERSION.SDK_INT < 34) {
            startActivityAndCollapse(intent)
        } else {
            startActivityAndCollapse(
                    PendingIntent.getActivity(this, 0, intent, PendingIntent.FLAG_IMMUTABLE)
            )
        }
    }

    private fun startBy() {
        if (!isMainProcessRunning()) {
            startByLaunch()
        } else {
            startByService()
        }
    }

    private fun isMainRuning(): Boolean = isServiceRuning(MainActivity::class.java.name)

    private fun isRuning(): Boolean = isServiceRuning(service_class_name)

    private fun isServiceRuning(serviceName: String): Boolean {
        try {
            val packageName = getPackageName()
            val activityManager = getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
            val services = activityManager.getRunningServices(Integer.MAX_VALUE)
            for (runningServiceInfo in services) {
                if (runningServiceInfo.service.getPackageName().equals(packageName)) {
                    if (runningServiceInfo.service.getClassName().equals(serviceName)) {
                        return runningServiceInfo.started
                    }
                }
            }
        } catch (e: Exception) {
            var stackTrace = e.getStackTrace().joinToString(separator = "\n")
            writeLog("TileService isServiceRuning: exception: $e \n$stackTrace")
        }

        return false
    }

    fun isMainProcessRunning(): Boolean {
        val packageName = getPackageName()
        val activityManager = getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
        val runningApps = activityManager.runningAppProcesses ?: return false
        for (procInfo in runningApps) {
            if (procInfo.processName == packageName) {
                return true
            }
        }
        return false
    }

    private fun serviceFile(): File {
        val context = this as Context
        return File(context.getFilesDir(), service_file_name)
    }

    private fun profileFile(): File {
        val context = this as Context
        return File(context.getFilesDir(), profile_file_name)
    }

    private fun writeLog(message: String) {
        print("TileService writeLog: $message\n")
    }
}
