class AddDatfileRefToDatstatuses < ActiveRecord::Migration[5.1]
  def change
    add_reference :datstatuses, :datfile, foreign_key: true
  end
end
