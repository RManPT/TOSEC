class RemoveDatfileFromDatstatus < ActiveRecord::Migration[5.1]
  def change
    remove_reference :datstatuses, :datfile, foreign_key: true
  end
end
