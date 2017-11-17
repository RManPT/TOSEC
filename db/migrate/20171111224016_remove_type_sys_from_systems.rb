class RemoveTypeSysFromSystems < ActiveRecord::Migration[5.1]
    def change
      remove_column :systems, :typeSys, :string
    end
  end