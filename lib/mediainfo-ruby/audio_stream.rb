module MediaInfoLib
  class AudioStream < MediaInfoLib::Stream
    
    def codec
      @stream_info["Format"]
    end
    
    def samplerate
      @stream_info["SamplingRate"].to_i
    end
    
    def channels
      @stream_info["Channel(s)"].to_i
    end
    
    def mono?
      1 == channels
    end
    
    def stereo?
      1 < channels
    end
    
    def duration
      @stream_info["Duration"].to_i
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