
context "given a path to a nonexistant file" do
	
  setup do
    MediaInfoLib::MediaInfo.new
  end
 
  asserts("raises an exeption") { topic.open('not/there') }.raises(Errno::ENOENT)  
  
end

context "given a video file" do

  setup do
    testfile = "#{File.dirname(__FILE__)}/testdata/IMG_0762.MOV"
    info = MediaInfoLib::MediaInfo.new
    info.open(testfile)
  end

  asserts("general info") { topic.general } 
	asserts("file is recognized as video") { topic.video? }
  asserts("file is recognized as audio") { topic.audio? }
  asserts("file is not recognized as text") { !topic.text? }
  asserts("file is not recognized as menu") { !topic.menu? }
  asserts("file is not recognized as image") { !topic.image? }
  
  context "> general info" do
  
    setup do
      topic.general
    end
  
    asserts(:format).equals("MPEG-4")
    asserts(:mime_type).equals("video/mp4")
    asserts(:modified_date).equals(File.mtime("#{File.dirname(__FILE__)}/testdata/IMG_0762.MOV"))
    asserts(:image_count).equals(0)
    asserts(:filename).equals('IMG_0762.MOV')
    asserts(:filesize).equals(1882218)
    
  end
  
  context "> streams" do
    
    setup do
      topic.streams
    end
    
  end
  
  
  
end