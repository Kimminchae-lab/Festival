package com.example.gno.Views

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.os.Handler
import android.view.Window
import androidx.appcompat.app.ActionBar
import androidx.core.view.isVisible
import com.example.gno.R
import kotlinx.android.synthetic.main.activity_splash.*

class SplashActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_splash)

        // 액션바 없애기
        val actionBar = supportActionBar
        actionBar?.hide()

        startLoading()
    }

    // region
    // 로그인 메소드, 세션 유지
    // endregion

    // 앱 실행 후 2초 뒤에 MainActivity로 전환
    private fun startLoading() {
        // 로그인이 되어있는 상태라면
        // if (logIn()) {
            Handler().postDelayed({
                val intent = Intent(this, MainActivity::class.java)
                startActivity(intent) // MainActivity로 화면 전환
                finish() // 꼭 finish()를 해줘야 함
            }, 2000) // 2초 후
        //}
        // 로그인이 되지 않았을 시
        // loginButton.isVisible = true
        loginButton.isVisible = false
    }
}