class AddDatsatusToDatfile < ActiveRecord::Migration[5.1]
  def change
    add_reference :datfiles, :datstatus, foreign_key: true
  end
end
