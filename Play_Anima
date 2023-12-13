/*
script: Play_Anima
author: Goldiloxs, TheResistor
version: 2.1.0
*/

float sec = 5.0;

integer numDances;
integer i = 1;
string animation;

default
{
    state_entry()
    {
        llSetTimerEvent(sec);
        numDances = llGetInventoryNumber(INVENTORY_ANIMATION);
        animation = llGetInventoryName(INVENTORY_ANIMATION,0);
        llStartObjectAnimation(animation);
    }
    
    timer()
    {
        if (i < numDances)
        {
            llStopObjectAnimation(animation);    // stop the current animation        
            animation = llGetInventoryName(INVENTORY_ANIMATION,i);        
            llStartObjectAnimation(animation);
            i += 1;
        }
        else i = 0;
    }
}
