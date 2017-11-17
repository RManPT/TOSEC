class AddCompaniesRefToSystems < ActiveRecord::Migration[5.1]
  def change
    add_reference :systems, :companies, foreign_key: true
  end
end
