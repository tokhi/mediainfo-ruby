context "given a broken file" do
  
  setup do
    testfile = "#{File.dirname(__FILE__)}/testdata/broken.m4v"
    info = MediaInfoLib::MediaInfo.new
    info.open(testfile)
  end
  
  asserts(:video).nil
  asserts(:audio).nil
  denies(:video?)
  denies(:audio?)
  
end