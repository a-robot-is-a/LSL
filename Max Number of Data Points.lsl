// The linkset datastore can contain up to 131072 bytes (128 KiB) of data

//  Every pair written to the datastore consumes a number of bytes in the datastore equal to the length of name plus the length of value

// LSL-Mono sees all string as UTF16

// My pair:  uuid of the box + vector of the location

key box1 = "01234567-89ab-cdef-0123-456789abcdef";
vector loca = <0.0,0.0,0.0>;

default
{
    state_entry()
    {
        llSay(0, "Maximum Number of Data Points");
    }

    touch_start(integer total_number)
    {
        // convert everthing to string
        string dPoint = (string)box1 + "," + (string)loca;
        // get strlen
        integer strlen = llStringLength(dPoint);
        // print it to the screen
        llSay(0, "The length of the data point will be " + (string)strlen + " char.");
        // LSL-Mono sees all string as UTF16 (1 char = 2 Byte)
        integer max = 131072 / 128;
        llSay(0, "A maximum of " + (string)max + " data points are possible."); 
    }
}
