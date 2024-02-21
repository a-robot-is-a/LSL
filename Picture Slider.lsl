float sec = 35.5;
integer picNum;
integer i;

default
{
    state_entry()
    {
        picNum = llGetInventoryNumber(INVENTORY_TEXTURE); 
        
        llSetTimerEvent(sec);
    }

    timer()
    {
        if (i < picNum)
        {
            
            
            i += 1;               
        }
        else i = 0;        
    }
}
