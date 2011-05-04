
context "given an image file" do
  
  setup do
    info = MediaInfoLib::MediaInfo.new
    info.open("#{File.dirname(__FILE__)}/testdata/Test_robert.png")
  end
  
  asserts("general info") { topic.general } 
	asserts("file is recognized not as video") { !topic.video? }
  asserts("file is recognized not as audio") { !topic.audio? }
  asserts("file is recognized as image") { topic.image? }
  
  context "> general info" do
  
    setup do
      topic.general
    end
  
    asserts(:format).equals("PNG")
    
  end
  
end