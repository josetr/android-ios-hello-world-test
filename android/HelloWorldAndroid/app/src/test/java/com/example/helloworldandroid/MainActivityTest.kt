package com.example.helloworldandroid

import android.widget.Button
import android.widget.TextView
import org.junit.Assert.assertEquals
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class MainActivityTest {
    @Test
    fun showsHelloWorld_andChangesAfterButtonTap() {
        val activity = Robolectric.buildActivity(MainActivity::class.java).setup().get()
        val helloText = activity.findViewById<TextView>(R.id.hello_text)
        val helloButton = activity.findViewById<Button>(R.id.hello_button)

        assertEquals("Hello World", helloText.text.toString())
        helloButton.performClick()
        assertEquals("Hello Button", helloText.text.toString())
    }
}

