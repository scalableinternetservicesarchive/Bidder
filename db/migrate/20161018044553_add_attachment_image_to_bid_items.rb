class AddAttachmentImageToBidItems < ActiveRecord::Migration
  def self.up
    change_table :bid_items do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :bid_items, :image
  end
end
