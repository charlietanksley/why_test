require 'rake/clean'
require 'rubygems'
require 'rubygems/package_task'
require 'rdoc/task'
require 'rake/testtask'

#Rake::RDocTask.new do |rd|
#  rd.main = "README.rdoc"
#  rd.rdoc_files.include("README.rdoc","lib/**/*.rb","bin/**/*")
#  rd.title = 'Your application title'
#end
#
#spec = eval(File.read('why_test.gemspec'))

#Rake::GemPackageTask.new(spec) do |pkg|
#end

desc "Run all our tests"
task :test do
Rake::TestTask.new do |t|
  t.libs << "test"
  t.pattern = "test/**/*_test.rb"
  t.verbose = false
  end
end

task :default => :test
