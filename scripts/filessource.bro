redef record Files::Info += 
    {
    cl_source: string &log &optional;
    };


event file_sniff(f: fa_file, meta: fa_metadata)
    {
	if (f?$source)
	    {
	    f$info$cl_source = f$source;
#   	delete f$source;
#		f$source="";
#		print f;
		}
    }
