class AddAttachmentImageToBidItems < ActiveRecord::Migration
  def self.up
    add_attachment :bid_items  :image
  end

  def self.down
    remove_attachment :bid_items, :image
  end
end
