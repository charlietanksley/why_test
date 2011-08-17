module GeneratorInformation

  def riot
    i = <<-EOF

      You'll be ready to riot once you

      gem install riot

      or
      
      gem 'riot' in your Gemfile

    EOF
  end

  def rspec
    i = <<-EOF

      Be sure to either

      gem install rspec

      or

      gem 'rspec' in your Gemfile

    EOF
  end

end
