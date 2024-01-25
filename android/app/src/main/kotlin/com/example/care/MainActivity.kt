package com.hyodo.care

import android.content.Intent
import android.net.Uri
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "채널이름"
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler { call, result ->
            when {
                // Intent 스킴 URL을 안드로이드 웹뷰에서 접근가능하도록 변환
                call.method.equals("getAppUrl") -> {
                    val url: String = call.argument("url")!!
                    val intent = Intent.parseUri(url, Intent.URI_INTENT_SCHEME)
                    if (intent.resolveActivity(packageManager) != null) {
                        startActivity(intent)
                        result.success("")
                    }
                    //여기서 Null이 뜸
//                    val fallbackUrl = intent.getStringExtra("browser_fallback_url")
//                    if (fallbackUrl != null) {
//                        result.success(fallbackUrl);
//                    } else {
//                        result.success(intent.dataString)
//                    }
                }
                // Intent 스킴 URL을 playStore Market URL로 변환
                call.method.equals("getMarketUrl") -> {
                    val url: String = call.argument("url")!!
                    val packageName = Intent.parseUri(url, Intent.URI_INTENT_SCHEME).getPackage()
                    val marketUrl = Intent(
                        Intent.ACTION_VIEW,
                        Uri.parse("market://details?id=$packageName")
                    )
                    result.success(marketUrl.dataString)
                }
            }
        }
    }
}
