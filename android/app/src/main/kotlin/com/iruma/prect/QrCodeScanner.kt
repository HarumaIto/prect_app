package com.iruma.prect

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.net.wifi.WifiManager
import android.os.Build
import android.util.Log
import android.provider.Settings.ACTION_PROCESS_WIFI_EASY_CONNECT_URI
import androidx.annotation.RequiresApi
import androidx.core.net.toUri

class QrCodeScanner {

    companion object {
        const val qrScanRequestCode: Int = 5000
    }

    @RequiresApi(api = Build.VERSION_CODES.Q)
    fun startWifiQRCodeScanner(activity: MainActivity) {
        val VALID_WIFI_DPP_QR_CODE = "" +
                "DPP:I:SN=4774LH2b4044;M:010203040506;K:MDkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDIgADURzxmttZoIRIPWGoQMV00XHWCAQIhXruVWOz0NjlkIA=;;"

        val INTENT_CONFIGURATOR_SCANNER = "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_SCANNER"
        val INTENT_ENROLLEE_SCANNER= "android.settings.WIFI_DPP_ENROLLEE_QR_CODE_SCANNER"

        val wifiManager: WifiManager = activity.applicationContext.getSystemService(Context.WIFI_SERVICE) as WifiManager

        // EasyConnectでQRコードを読みとる
        if (wifiManager.isEasyConnectSupported) {
            val intent = Intent(INTENT_CONFIGURATOR_SCANNER)
            //intent.data = Uri.parse(VALID_WIFI_DPP_QR_CODE)
            activity.startActivityForResult(intent, qrScanRequestCode)
        } else {
            Log.e("QrCodeScanner", "EasyConnect is not supported.")
        }
    }
}