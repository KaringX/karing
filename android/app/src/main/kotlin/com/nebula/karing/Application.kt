package com.nebula.karing

import android.app.Application

class MyApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        instance = this
    }

    companion object {
        private var instance: MyApplication? = null

        fun instance() = instance!!
    }
}
