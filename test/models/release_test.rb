require 'test_helper'

class ReleaseTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "Vazio" do
    userN = Release.new
    assert_not userN.save, "Salvou sem nome"
  end
end
