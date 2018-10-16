package com.chuwa.cordova.agora;

import android.app.Activity;
//import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

public class ChatRoomActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        FakeR fakeR = new FakeR(this);
        // setContentView(R.layout.activity_chat_room);
        setContentView(fakeR.getId("layout", "activity_chat_room"));
    }
}
