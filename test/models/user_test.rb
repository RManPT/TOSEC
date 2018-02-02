require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "Vazio" do
    userN = User.new
    assert_not userN.save, "Salvou sem nome"
  end
end
