
/*-- User Input --*/
integer channel = 17;
integer listen_handle;

/*-- Server --*/
key http;
string url = "https://api.openai.com/v1/chat/completions";
string APIkey = "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";
string mod = "gpt-3.5-turbo-0613";

list headers;
    string role;
    string json;
    string message;
string request;

default
{
    state_entry()
    {
        listen_handle = llListen(channel,"","","");
        
        headers = [ HTTP_METHOD, "POST",
            HTTP_MIMETYPE, "application/json",
            HTTP_BODY_MAXLENGTH, 2048,  // Adjust based on the expected length of your request
            HTTP_CUSTOM_HEADER, "Authorization","Bearer " + APIkey
        ];
    }
    
    listen( integer channel, string name, key id, string message )
    {
        llSay(0, "me: " + message + "\n");
        
        request = message;
        
        role = llList2Json(JSON_OBJECT, ["role","user", "content",request]);
        json = llList2Json(JSON_ARRAY, [ role ]);
        message = llList2Json(JSON_OBJECT, [ "model",mod , "messages",json]);
        http = llHTTPRequest(url, headers, message);
    }

    http_response(key request_id, integer status, list metadata, string body)
    {
        if (request_id == http)
        {
            if (status == 200)
            {
                llSay(0, "gpt : " + llJsonGetValue(body, ["choices",0,"message","content"]));
            }
        }
    }
}


/*
"We could not parse the JSON body of your request. (HINT: This likely means you aren't using your HTTP library correctly. The OpenAI API expects a JSON payload, but what was sent was not valid JSON. If you have trouble figuring out how to fix this, please contact us through our help center at help.openai.com.)",
*/