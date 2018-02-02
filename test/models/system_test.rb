require 'test_helper'

class SystemTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "Vazio" do
    userN = System.new
    assert_not userN.save, "Salvou sem nome"
  end
end
