module MediaInfoLib
  class GeneralStream < MediaInfoLib::Stream
    #attr_reader :codec_id, "Codec ID"  
    #m_attr_reader :format, "Format"
  
    def format
      @stream_info["Format"]
    end
    
    def mime_type
      @stream_info["InternetMediaType"]
    end
    
    def filesize
      @stream_info["FileSize"].to_i
    end
    
    def filename
      File.basename(@stream_info["CompleteName"])
    end
    
    def modified_date
      # libmediainfo returns "UTC 2011-05-04 09:52:15" which gets parsed wrong, appending "UTC" fixes the parsing
      Time.parse("#{@stream_info["File_Modified_Date"]} UTC")
    end
    
    def image_count
      @stream_info["ImageCount"].to_i
    end
    
   # mediainfo_attr_reader :codec_id, "Codec ID"
   # 
   # mediainfo_duration_reader :duration
   # 
   # mediainfo_attr_reader :format
   # mediainfo_attr_reader :format_profile
   # mediainfo_attr_reader :format_info
   # mediainfo_attr_reader :overall_bit_rate
   # mediainfo_attr_reader :writing_application
   # mediainfo_attr_reader :writing_library
   # 
   # mediainfo_date_reader :mastered_date
   # mediainfo_date_reader :tagged_date
   # mediainfo_date_reader :encoded_date
      

  end
end