class Community < ApplicationRecord
  has_many :user_communities, :dependent => :destroy

end
