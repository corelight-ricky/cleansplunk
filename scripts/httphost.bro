redef record HTTP::Info +=
    {
    cl_host: string &log &optional;
    };


event http_all_headers(c: connection, is_orig: bool, hlist: mime_header_list )
        {
        if (c$http?$host)
                {
                c$http$cl_host = c$http$host;
 #               delete c$http$host;
                }
        }
