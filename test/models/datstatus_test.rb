require 'test_helper'

class DatstatusTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "Vazio" do
    userN = Datstatus.new
    assert_not userN.save, "Salvou sem nome"
  end
end
