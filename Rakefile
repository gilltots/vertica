require 'rubygems'
require 'rake'

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

begin
  require 'yard'
  YARD::Rake::YardocTask.new do |t|
    t.options = ['--no-private', '-m', 'markdown', '-o', './doc']
  end
rescue LoadError
  task :yardoc do
    abort "YARD is not available. In order to run yardoc, you must: sudo gem install yard"
  end
end

desc 'Generate documentation'
task :doc => :yard
task :default => :test
