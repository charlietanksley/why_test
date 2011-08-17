require 'teststrap'

context "Sample string reverse" do
  setup { 'this' }

  asserts(:reverse).equals 'siht'
end

