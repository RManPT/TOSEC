class RemoveDateFromDatfiles < ActiveRecord::Migration[5.1]
  def up
    remove_column :datfiles, :date, :date
  end

  def down
    add_column :datfiles, :date, :date, :date
  end
end
