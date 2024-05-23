/************************
script: Blue Poseball   *
author: TheResistor     *
version: 2024-05-23     *
*************************/

set_height(float height)
{
    float pos = (height/2) + 0.076; // + a lil offset
    
    integer prim = llGetNumberOfPrims();
        
    llSetLinkPrimitiveParamsFast(prim,[PRIM_POS_LOCAL,<0.0, 0.0, pos>, PRIM_ROT_LOCAL,ZERO_ROTATION]);
}    

get_height(key body)    // Get thickness, width and height
{
    vector agent_size = llGetAgentSize(body);
    float avatar_height = agent_size.z;
    
    set_height(avatar_height);
}


default
{
    state_entry()
    {
        llSitTarget(< 0.0, 0.0, 0.85 >, ZERO_ROTATION);
    }

    touch_start(integer total_number)
    {
        key id = llDetectedKey(0);

        get_height(id);
    }
    
    changed(integer change)
    {        
        if (change & CHANGED_LINK)
        {
            key av = llAvatarOnSitTarget();
            
            if (av)
            {            
                llRequestPermissions(av, PERMISSION_TRIGGER_ANIMATION);
            }
            else llResetScript();
        }
    }    
    
    run_time_permissions(integer permissions)
    {
        if (permissions & PERMISSION_TRIGGER_ANIMATION)
        {
            llStopAnimation("Sit");
            llStartAnimation("Male_Basic_Step"); // Start of the animation
        }
    } 
}
