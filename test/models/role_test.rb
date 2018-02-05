require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "Vazio" do
    userN = Role.new
    assert_not userN.save, "Salvou sem nome"
  end
end
