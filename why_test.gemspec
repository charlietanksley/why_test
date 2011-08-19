# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require File.join([File.dirname(__FILE__),'lib','version.rb'])

Gem::Specification.new do |s|
  s.name        = "why_test"
  s.version     = WhyTest::VERSION
  s.authors     = ["Charlie Tanksley"]
  s.email       = ["charlie.tanksley@gmail.com"]
  s.homepage    = "http://github.com/charlietanksley/why_test"
  s.summary     = %q{Test setup generation}
  s.description = %q{why_test is a command line utility that generates basic test setups for a number of different test frameworks.}

  s.rubyforge_project = "why_test"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency('gli')
  s.add_development_dependency('rake')
  s.add_development_dependency('riot')
  s.add_development_dependency('rspec')
  s.add_development_dependency('shindo')
  s.add_development_dependency('testrocket')

end
