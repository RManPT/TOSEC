class AddAttachmentImageToSystems < ActiveRecord::Migration[5.1]
  def self.up
    change_table :systems do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :systems, :image
  end
end
