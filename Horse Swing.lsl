/*
script: Horse Swing
author: TheResistor, Goldi
version: 08.01.2024
*/

rotation def;
integer swing = FALSE;

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
        if (swing ==TRUE) { /* start rocking */}
        else { /* stop rocking */}
    }
}
