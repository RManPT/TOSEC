require 'test_helper'

class CollectionTypeTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "Vazio" do
    userN = CollectionType.new
    assert_not userN.save, "Salvou sem nome"
  end
end
