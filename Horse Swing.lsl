/*
script: Horse Swing
author: TheResistor, Goldi
version: 08.01.2024
*/

rotation def;
integer swing = FALSE;
float tik = 1.0;
float counter = 0.0;

default
{
    state_entry()
    {
        llSetTouchText("Swing");
        def = llGetRot();
    }

    touch_start(integer total_number)
    {
        swing = !swing;
        if (swing ==TRUE) { /* start rocking */ llSetTimerEvent(tik);}
        else { /* stop rocking */}
    }

    timer()
    {
        counter = counter + tik; 
        llSay(0, (string)counter + " seconds have passed");
    }
}
