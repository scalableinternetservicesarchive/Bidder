class AddUserIdToBidItems < ActiveRecord::Migration[5.0]
  def change
    add_column :bid_items, :user_id, :integer
  end
end
