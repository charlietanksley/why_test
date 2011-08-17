require 'teststrap'

context "just a sample" do
  setup { 'this' }

  asserts(:reverse).equals 'siht'
end
