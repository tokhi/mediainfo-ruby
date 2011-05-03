require 'rake/testtask'

Rake::TestTask.new(:test) do |test|
  test.libs << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
  test.ruby_opts = ['-rubygems', '-rtest_helper']
end

task :default => :test

task :build do
  system "gem build mediainfo-ruby.gemspec"
end
 
#task :release => :build do
#  system "gem push mediainfo-ruby-#{MediaInfoLib::VERSION}"
#end
