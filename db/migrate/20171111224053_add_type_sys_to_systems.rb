class AddTypeSysToSystems < ActiveRecord::Migration[5.1]
  def change
    add_column :systems, :typeSys, :integer, foreign_key: true
  end
end
 