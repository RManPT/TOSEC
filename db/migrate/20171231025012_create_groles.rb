class CreateGroles < ActiveRecord::Migration[5.1]
  def change
    create_table :groles do |t|
      t.references :user, foreign_key: true
      t.references :role, foreign_key: true
      t.references :route, foreign_key: true

      t.timestamps
    end
  end
end
