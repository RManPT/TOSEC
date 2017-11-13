class CreateDatfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :datfiles do |t|
      t.string :name
      t.date :date
      t.text :readme
      t.references :collection_type, foreign_key: true

      t.timestamps
    end
  end
end
