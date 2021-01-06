package com.example.gno.Views

import android.graphics.Color
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Toast
import com.example.gno.R
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // 액션바 없애기
        val actionBar = supportActionBar
        actionBar?.hide()

        setSupportActionBar(toolBar)

        // Activate Home Button
        supportActionBar?.setDisplayHomeAsUpEnabled(true)

        // Change Image on ToolBar to Menu
        supportActionBar?.setHomeAsUpIndicator(R.drawable.ic_baseline_menu_24)


    }

    // region 뒤로가기 두 번 누르면 종료
    private var backPressedTime: Long = 0

    override fun onBackPressed() {
        // 2초내 다시 클릭하면 앱 종료
        if (System.currentTimeMillis() - backPressedTime < 2000) {
            finish()
            return
        }

        // 처음 클릭 메시지
        Toast.makeText(this, "뒤로가기 버튼을 한번 더 누르시면 앱이 종료됩니다.", Toast.LENGTH_SHORT).show()
        backPressedTime = System.currentTimeMillis()
    }
    // endregion
}