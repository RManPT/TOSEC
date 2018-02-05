require 'test_helper'

class RouteTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "Vazio" do
    userN = Route.new
    assert_not userN.save, "Salvou sem nome"
  end
end
