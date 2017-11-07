class AddDateReleaseToSystems < ActiveRecord::Migration[5.1]
  def change
    add_column :systems, :dateRelease, :date
  end
end
