class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :pub, :boolean
    add_column :users, :mod, :boolean
  end
end
