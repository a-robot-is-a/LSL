float sec = 35.5;
integer picNum;
integer i;
string picture;

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
            picture = llGetInventoryName(INVENTORY_TEXTURE,i);
            
            llSetTexture(picture, 2);            
            
            i += 1;               
        }
        else i = 0;        
    }
}
