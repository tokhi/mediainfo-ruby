
context "Syntax" do
  
  setup do
    MediaInfoLib::MediaInfo.new
  end
  
  asserts("> blocks in open") {
    
    topic.open "#{File.dirname(__FILE__)}/testdata/IMG_0762.MOV" do |info|
      info.video?
    end
    
  }
  
  asserts("> nonexistant file in open raises an exeption") { topic.open('not/there') }.raises(Errno::ENOENT)  

end
