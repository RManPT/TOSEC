class AddUserRefToDatfiles < ActiveRecord::Migration[5.1]
  def change
    add_reference :datfiles, :user, foreign_key: true
  end
end
