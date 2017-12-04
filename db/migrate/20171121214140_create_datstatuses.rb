class CreateDatstatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :datstatuses do |t|
      t.string :name
      t.string :abbreviation
      t.text :descStatus

      t.timestamps
    end
  end
end
