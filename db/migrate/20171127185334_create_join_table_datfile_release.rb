class CreateJoinTableDatfileRelease < ActiveRecord::Migration[5.1]
  def change
    create_join_table :datfiles, :releases do |t|
      # t.index [:datfile_id, :release_id]
      # t.index [:release_id, :datfile_id]
    end
  end
end
