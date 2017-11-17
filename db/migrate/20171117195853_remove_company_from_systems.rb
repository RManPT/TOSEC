class RemoveCompanyFromSystems < ActiveRecord::Migration[5.1]
  def change
    remove_column :systems, :company, :string
  end
end
