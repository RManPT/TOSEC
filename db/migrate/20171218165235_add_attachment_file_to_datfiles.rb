class AddAttachmentFileToDatfiles < ActiveRecord::Migration[4.2]
  def self.up
    change_table :datfiles do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :datfiles, :file
  end
end
