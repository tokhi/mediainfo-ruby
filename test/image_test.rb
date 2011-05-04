
context "given an image file" do
  
  setup do
    info = MediaInfoLib::MediaInfo.new
    info.open("#{File.dirname(__FILE__)}/testdata/Test_robert.png")
  end
  
  asserts("general info") { topic.general } 
	asserts("file is not recognized as video") { !topic.video? }
  asserts("file is not not recognized as audio") { !topic.audio? }
  asserts("file is not not recognized as text") { !topic.text? }
  asserts("file is not not recognized as menu") { !topic.menu? }
  asserts("file is recognized as image") { topic.image? }
  
  context "> general info" do
  
    setup do
      topic.general
    end
  
    asserts(:format).equals("PNG")
    asserts(:mime_type).equals("image/png")
    asserts(:modified_date).equals(Time.parse '2011-05-04 07:52:15 +0200')
    asserts(:image_count).equals(1)
    asserts(:filename).equals('Test_robert.png')
    asserts(:filesize).equals(15119)
    
  end
  
end