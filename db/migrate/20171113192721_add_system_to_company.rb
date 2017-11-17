class AddSystemToCompany < ActiveRecord::Migration[5.1]
  def change
    add_reference :companies, :system, foreign_key: true
  end
end
