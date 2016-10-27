class UserCommunity < ApplicationRecord

  belongs_to :community
  validates :user_id, :uniqueness => { :scope => :community_id }
end
