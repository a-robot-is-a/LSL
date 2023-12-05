/*
script: List Script
author: Goldi, TheResistor
version: 1.0.0
*/

list myList = [0, 1, 2, 3, 4]

default
{
    state_entry()
    {
        llSay(0, "Hello, Avatar!");
    }

    touch_start(integer total_number)
    {
        llSay(0, "Touched.");
    }
}
