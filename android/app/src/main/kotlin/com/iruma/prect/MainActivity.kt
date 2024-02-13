package com.iruma.prect

import android.content.Intent
import android.os.Build
import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
    companion object {
        const val CHANNEL = "com.iruma.prect/native"
        const val METHOD_AP_CONNECT = "ApConnect"
        const val METHOD_AP_DISCONNECT = "ApDisconnect"
        const val METHOD_CONFIGURE_QR_SCANNER = "QrScanner"
    }

    private lateinit var channel: MethodChannel
    private lateinit var methodResult: MethodChannel.Result

    private var connectAccessPoint: ConnectAccessPoint? = null
    private lateinit var qrCoderScanner: QrCodeScanner

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)

        channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
        channel.setMethodCallHandler { methodCall: MethodCall, result: MethodChannel.Result ->
            methodResult = result
            when (methodCall.method) {
                METHOD_AP_CONNECT -> {
                    connectAccessPoint = ConnectAccessPoint(channel)
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                        connectAccessPoint!!.connect(this)
                    }
                }
                METHOD_AP_DISCONNECT -> {
                    // 初期化されていない == connectが呼ばれていないとなるから
                    if (connectAccessPoint == null) result.success(null)
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                        connectAccessPoint!!.disconnect()
                    }
                }
                METHOD_CONFIGURE_QR_SCANNER -> {
                    qrCoderScanner = QrCodeScanner()
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                        qrCoderScanner.startWifiQRCodeScanner(this)
                    }
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }

    override fun onDestroy() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            connectAccessPoint?.disconnect()
        }
        super.onDestroy()
    }

    override fun onActivityResult(requestCode: Int, result: Int, intent: Intent?) {
        if(requestCode == QrCodeScanner.qrScanRequestCode && requestCode == RESULT_OK) {
            methodResult.success(null)
        }
        // とりあえずsuccessを返してみる
        Log.d("onActivityResult", "result: $result, intent: ${intent.toString()}")
        return super.onActivityResult(requestCode, result, intent)
    }
}
