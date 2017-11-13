class AddSystemsTypesRefToSystems < ActiveRecord::Migration[5.1]
  def change
    add_reference :systems, :systemsType, foreign_key: true
  end
end
