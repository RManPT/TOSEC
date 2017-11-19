class CreateReleases < ActiveRecord::Migration[5.1]
  def change
    create_table :releases do |t|
      t.text :descRelease

      t.timestamps
    end
  end
end
