class AddSystemRefToDatfiles < ActiveRecord::Migration[5.1]
  def change
    add_reference :datfiles, :system, foreign_key: true
  end
end
