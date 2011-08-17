#require 'tmpdir'
require 'teststrap'
require 'why_test/generator'

context "#create" do
  setup { Generator.new('riot') }

  asserts(:create, 'riot').equals Hash[:framework => 'riot', :directories => ['test'],
    :files => ['test/sample_test.rb', 'test/teststrap.rb'], :rakefile => 'Rakefile']
end

context "#write_files" do
  helper(:tmp_dir) do
    File.join(File.expand_path(File.dirname(__FILE__)), 'tmp', 'temp')
  end

  setup do
    Generator.new('riot').write_files(tmp_dir)
    tmp_dir
  end

  teardown { system "rm -r -f #{tmp_dir}" }

  context "it creates the directories we need" do
    asserts{ File.exists?(File.join(topic, 'test')) }.equals true
    asserts{ File.directory?(File.join(topic, 'test')) }.equals true
  end
  
  context "it creates a Rakefile" do
    asserts{ File.exists?(File.join(topic, 'Rakefile')) }.equals true
  end

  context "it creates the files we need" do
    asserts{ File.exists?(File.join(topic, 'test', 'teststrap.rb')) }.equals true
    asserts{ File.exists?(File.join(topic, 'test', 'sample_test.rb')) }.equals true
  end
end


