package com.example.helloworldandroid

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val helloText = findViewById<TextView>(R.id.hello_text)
        val helloButton = findViewById<Button>(R.id.hello_button)

        helloText.text = getString(R.string.hello_world)
        helloButton.setOnClickListener {
            helloText.text = getString(R.string.hello_button)
        }
    }
}

