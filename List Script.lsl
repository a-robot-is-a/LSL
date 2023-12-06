/*
script: List Script
author: Goldi, TheResistor
version: 1.1.0
*/

list myList = [0, 1, 2, 3, 4];

integer i;
integer yeah = 16;    // new

default
{
    state_entry()
    {
        llSay(0, "Hello, Avatar!");
    }

    touch_start(integer total_number)
    {
        myList = [yeah] + myList;                    // new
        integer length = llGetListLength(myList);    // new
        
        for ( i = 0; i < length; i++)
        {
            llSay(0, llList2String(myList, i));
        }
    }
}
