class AddAttachmentImageToDinings < ActiveRecord::Migration
  def self.up
    change_table :dinings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :dinings, :image
  end
end
