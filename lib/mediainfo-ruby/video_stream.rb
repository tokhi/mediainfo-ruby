module MediaInfoLib
  class VideoStream < MediaInfoLib::Stream
    
    def width
      @stream_info["Width"].to_i
    end

    def height
      @stream_info["Height"].to_i
    end
    
    def aspect_ratio
      @stream_info["DisplayAspectRatio/String"]
    end
    
    def rotation
      @stream_info["Rotation"].to_f
    end
    
    def duration
      @stream_info["Duration"].to_i
    end
    
    def codec
      @stream_info["CodecID"]
    end
      
    def codec_url
      @stream_info["CodecID/URL"]
    end
    
    def codec_name
      @stream_info["CodecID/Info"]
    end

    def framerate
      @stream_info["FrameRate"].to_i
    end
    
    alias :fps :framerate
    
    def vfr?
      @stream_info["FrameRate_Mode"] == "VFR"
    end
    
    def cfr?
      @stream_info["FrameRate_Mode"] == "CFR"
    end
    
    def bitrate
      @stream_info["BitRate"].to_i
    end
    
    def vbr?
      @stream_info["BitRate_Mode"] == "VBR"
    end
    
    def cbr?
      @stream_info["BitRate_Mode"] == "CBR"
    end


  end
end