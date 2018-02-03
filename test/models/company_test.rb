require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "Vazio" do
    userN = Company.new
    assert_not userN.save, "Salvou sem nome"
  end
end
