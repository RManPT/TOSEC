class CreateSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :systems do |t|
      t.string :name
      t.string :abbreviation
      t.string :company
      t.string :typeSys

      t.timestamps
    end
  end
end
