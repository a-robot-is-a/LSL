/*
script: List Script
author: Goldi, TheResistor
version: 1.1.0
*/

list myList = [];   // empty list

integer i;
integer yeah = 1;   // the first touch

default
{
    state_entry()
    {
        llSay(0, "Hello, Avatar!");
    }

    touch_start(integer total_number)
    {
        myList += [yeah];                   // append to the end of the list
        integer length = llGetListLength(myList);    // get the current length of the list

        llSay(0,"\nSomeone touched me");    // \n in text = (newline)
        
        for ( i = 0; i < length; i++)
        {
            llSay(0, llList2String(myList, i) +" times");
        }

        yeah += 1;          // and finally we add one to yeah. We could do better :)
    }
}
