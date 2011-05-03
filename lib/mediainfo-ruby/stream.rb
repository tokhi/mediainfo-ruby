module MediaInfoLib
  class Stream
    #class InvalidStreamType < Mediainfo::Error; end
        
    def initialize(stream_info)
      @stream_info = stream_info
    end

  end
end