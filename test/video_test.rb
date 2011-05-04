
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
  
  denies(:video).nil
  
  context "> video stream" do
    
    setup do
      topic.video
    end
    
    asserts(:width).equals(480)
    asserts(:height).equals(272)
    asserts(:aspect_ratio).equals('16:9')
    
    asserts(:codec).equals("avc1")
    
    asserts(:duration).equals(19033)
    
    asserts(:cfr?)
    denies(:vfr?)
    asserts(:framerate).equals(30)
    asserts(:fps).equals(30)
    
    asserts(:vbr?)
    denies(:cbr?)
    asserts(:bitrate).equals(723323)
    
    
    
  end
  
  denies(:audio).nil
  
  context "> audio stream" do
    
    setup do
      topic.audio
    end
  
    asserts(:mono?)
    denies(:stereo?)
    
    asserts(:duration).equals(19017)
  
    asserts(:bitrate).equals(64000)
    asserts(:codec).equals("AAC")
    asserts(:samplerate).equals(44100)
  
  end
    
end