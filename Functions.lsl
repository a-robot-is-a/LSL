/* In computer science, a function is the name of a program construct
that can be used to structure the program source code
so that these parts can be reused.

Functions are considered special variants of subroutines.
*/

// Here is a simple function as a start point

myFunc()
{
    llSay(0, "Touched.");
}


default
{
    state_entry()
    {
        llSay(0, "Hello, Avatar!");
    }

    touch_start(integer total_number)
    {
        myFunc();
    }
}
