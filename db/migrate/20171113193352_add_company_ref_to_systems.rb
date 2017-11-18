class AddCompanyRefToSystems < ActiveRecord::Migration[5.1]
  def change
    add_reference :systems, :company, foreign_key: true
  end
end
