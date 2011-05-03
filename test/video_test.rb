
context "given a path to a nonexistant file" do
	
  setup do
    MediaInfoLib::MediaInfo.new
  end
 
  asserts("raises an exeption") { topic.open('not/there') }.raises(Errno::ENOENT)  
  
end

context "given a video file" do

  setup do
    info = MediaInfoLib::MediaInfo.new
    info.open("#{File.dirname(__FILE__)}/testdata/12243_20110401-thema-scheibenputzer-PAL_MPG_H264.mpg")
  end

	asserts("file is recognized as video") { topic.video? }
  asserts("file is recognized as audio") { topic.audio? }
end