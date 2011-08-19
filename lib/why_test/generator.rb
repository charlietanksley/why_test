class Generator

  attr_reader :directory

  def initialize(framework)
    @details = create(framework)
  end

  # Creates a hash with the relevant information for generating our
  # testing files.
  #
  # @param [String] the name of a testing framework
  # @return [Hash] hash with keys for framework name (:framework), files
  # to be created (:files), and the rakefile (:rakfile).
  def create(framework_name)
    results = Hash[:framework => framework_name, :directories => [],
      :files => [], :rakefile => 'Rakefile']

    dir = File.join(File.dirname(File.expand_path(__FILE__)), 'generators', framework_name)
    Dir.chdir dir
    Dir["**/*"].each do |f|
      results[:files].push f unless f == 'Rakefile' or File.directory? f 
      results[:directories].push f if File.directory? f
    end

    results
  end

  # Write the files.
  #
  # @param [String] the name of a root directory (default is current
  # directory)
  def write_files(root_directory='.')
    base_dir = File.expand_path root_directory
    @template_directory = File.join(File.dirname(__FILE__), 'generators', @details[:framework])

    system "mkdir -p #{base_dir}" unless File.exists?(base_dir)
    Dir.chdir base_dir

    create_rakefile
    create_directories
    write_test_files
  end


  private

  def create_rakefile
    rakefile_contents = File.open(File.join(@template_directory, @details[:rakefile])) { |f| f.read }
    File.open('Rakefile', 'a') do |f|
      f.write rakefile_contents
    end
  end

  def create_directories
    @details[:directories].each do |d|
      system "mkdir -p #{d}"
    end
  end

  def write_test_files
    @details[:files].each do |f|
      file_contents = File.open(File.join(@template_directory, f)) { |c| c.read }
      File.open(f, 'w') do |f|
        f.write file_contents
      end
    end
  end

end
