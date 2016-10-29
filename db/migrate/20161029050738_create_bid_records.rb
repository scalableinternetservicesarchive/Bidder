class CreateBidRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :bid_records do |t|
      t.integer :price
      t.references :user, foreign_key: true
      t.references :bid_item, foreign_key: true

      t.timestamps
    end
  end
end
