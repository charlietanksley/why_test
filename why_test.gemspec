# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','why_test_version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'why_test'
  s.version = WhyTest::VERSION
  s.author = 'Charlie Tanksley'
  s.email = 'charlie.tanksley@gmail.com'
  s.homepage = 'http://github.com/charlietanksley/why_test'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Test setup generation'
# Add your other files here if you make them
  s.files = %w(
bin/why_test
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','why_test.rdoc']
  s.rdoc_options << '--title' << 'why_test' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'why_test'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_dependency('gli')
end
