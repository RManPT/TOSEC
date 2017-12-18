class AddAttachmentImageToSystems < ActiveRecord::Migration[4.2]
  def self.up
    change_table :systems do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :systems, :image
  end
end
