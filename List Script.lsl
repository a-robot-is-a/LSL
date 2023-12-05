/*
script: List Script
author: Goldi, TheResistor
version: 1.0.0
*/

list myList = [0, 1, 2, 3, 4];

integer i;                      // We need a integer variable

default
{
    state_entry()
    {
        llSay(0, "Hello, Avatar!");
    }

    touch_start(integer total_number)
    {
        for ( i = 0; i < 5; i++)
        {
            llSay(0, llList2String(myList, i));
        }
    }
}
