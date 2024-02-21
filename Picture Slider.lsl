float sec = 35.5;
integer picNum;

default
{
    state_entry()
    {
       picNum = llGetInventoryNumber(INVENTORY_TEXTURE); 
        
        llSetTimerEvent(sec);
    }

    timer()
    {
        
    }
}
