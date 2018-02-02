require 'test_helper'

class GroleTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "Vazio" do
    userN = Grole.new
    assert_not userN.save, "Salvou sem nome"
  end
end
