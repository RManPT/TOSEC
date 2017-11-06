class CreateReleases < ActiveRecord::Migration[5.1]
  def change
    create_table :releases do |t|
      t.string :name
      t.date :date
      t.text :readme
      t.references :release_type, foreign_key: true

      t.timestamps
    end
  end
end
