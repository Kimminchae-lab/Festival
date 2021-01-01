package com.example.gno.Views

import android.graphics.Color
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.example.gno.R
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // 액션바 없애기
        val actionBar = supportActionBar
        actionBar?.hide()

        toolBar.setBackgroundColor(Color.BLUE)
    }
}