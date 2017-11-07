class CreateCollectionTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :collection_types do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
