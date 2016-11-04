class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :sell_items, class_name:"BidItem", foreign_key: "seller_id"
  has_many :bid_records
  has_many :buy_items, class_name:"BidItem", foreign_key: "buyer_id"
end
