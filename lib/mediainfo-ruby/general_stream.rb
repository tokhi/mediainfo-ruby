module MediaInfoLib
  class GeneralStream < MediaInfoLib::Stream
    #attr_reader :codec_id, "Codec ID"  
    #m_attr_reader :format, "Format"
  
    def format
      @stream_info["Format"]
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