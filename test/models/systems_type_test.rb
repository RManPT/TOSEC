require 'test_helper'

class SystemsTypeTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "Vazio" do
    userN = SystemsType.new
    assert_not userN.save, "Salvou sem nome"
  end
end
