package com.example.gno.Views

import android.graphics.Color
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.MenuItem
import android.widget.Toast
import com.example.gno.R
import com.example.gno.navigation.ScheduleFragment
import com.example.gno.navigation.MoreFragment
import com.example.gno.navigation.NotificationFragment
import com.google.android.material.bottomnavigation.BottomNavigationView
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity(), BottomNavigationView.OnNavigationItemSelectedListener {
    // region BottomNavigation 선택
    override fun onNavigationItemSelected(p0: MenuItem): Boolean {
        when (p0.itemId) {
            R.id.notification -> {
                val transaction = supportFragmentManager.beginTransaction()
                transaction.replace(R.id.frame, NotificationFragment())
                transaction.commit()
                toolBar.title = "공지사항"
                return true
            }
            R.id.schedule -> {
                val transaction = supportFragmentManager.beginTransaction()
                transaction.replace(R.id.frame, ScheduleFragment())
                transaction.commit()
                toolBar.title = "학사일정"
                return true
            }
            R.id.more -> {
                val transaction = supportFragmentManager.beginTransaction()
                transaction.replace(R.id.frame, MoreFragment())
                transaction.commit()
                return true
            }
        }
        return false
    }

    // endregion
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Hide ActionBar
        val actionBar = supportActionBar
        actionBar?.hide()

        setSupportActionBar(toolBar)

        // Activate Home Button
        supportActionBar?.setDisplayHomeAsUpEnabled(true)

        // Change Image on ToolBar to Menu
        supportActionBar?.setHomeAsUpIndicator(R.drawable.ic_baseline_menu_24)

        val transaction = supportFragmentManager.beginTransaction()
        transaction.replace(R.id.frame, NotificationFragment())
        transaction.commit()


        navigation.setOnNavigationItemSelectedListener(this)
    }

    // region 뒤로가기 두 번 누르면 종료
    private var backPressedTime: Long = 0

    override fun onBackPressed() {
        // 2초내 다시 클릭하면 앱 종료
        if (System.currentTimeMillis() - backPressedTime < 2000) {
            finish()
            return
        }

        // If you click Back first
        Toast.makeText(this, "뒤로가기 버튼을 한번 더 누르시면 앱이 종료됩니다.", Toast.LENGTH_SHORT).show()
        backPressedTime = System.currentTimeMillis()
    }
    // endregion
}