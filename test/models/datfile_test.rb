require 'test_helper'

class DatfileTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "Vazio" do
    userN = Datfile.new
    assert_not userN.save, "Salvou sem nome"
  end
end
