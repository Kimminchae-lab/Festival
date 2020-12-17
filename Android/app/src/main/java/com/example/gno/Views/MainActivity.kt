package com.example.gno.Views

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.example.gno.R

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // 액션바 없애기
        val actionBar = supportActionBar
        actionBar?.hide()

    }
}