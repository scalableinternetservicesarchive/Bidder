
r = Random.new
n = 0

users = []
bid_items = []
communities = []
user_communities = []

#password = User.new(:password => "password").encrypted_password

(1..800).each do |i|
  users << "('#{i}_broswer@ucsb', '$2a$11$EqpBppDhqMxo7cdN34Wmh.A3GKM8/HhP64X8RikeNGWqry01czvJW','2000-01-01 12:34:56 UTC','2000-01-02 12:34:56 UTC')" 
  n += 1 
end
	

(1..150).each do |i|
  users << "('#{i}_small@ucsb', '$2a$11$EqpBppDhqMxo7cdN34Wmh.A3GKM8/HhP64X8RikeNGWqry01czvJW','2000-01-01 12:34:56 UTC','2000-01-02 12:34:56 UTC')" 
  n += 1
  total = r.rand(1..10)
  randnum=r.rand(800..10000)
  total.times do |j|
  bid_items << "(#{n},'#{j}item_of_small_{i}', '10','10',#{randnum},'2000-01-01 12:34:56 UTC','2000-01-02 12:34:56 UTC')" 
		
	end
end	

(1..50).each do |i|
   users << "('#{i}big@ucsb', '$2a$11$EqpBppDhqMxo7cdN34Wmh.A3GKM8/HhP64X8RikeNGWqry01czvJW','2000-01-01 12:34:56 UTC','2000-01-02 12:34:56 UTC')" 
    n += 1
  total = r.rand(100..500)
  randnum=r.rand(800..10000)
  total.times do |j|
  bid_items << "(#{n},'#{j}item_of_big_{i}', '10','10',#{randnum},'2000-01-01 12:34:56 UTC','2000-01-02 12:34:56 UTC')" 
    
  end
end 


(1..10).each do |i|
  communities << "('Community#{i}','2000-01-01 12:34:56 UTC','2000-01-02 12:34:56 UTC')"  
end

(1..1000).each do |i|
  randnum=r.rand(1..10)
  user_communities << "('#{randnum}',#{i},'2000-01-01 12:34:56 UTC','2000-01-02 12:34:56 UTC')"  
end

User.transaction do
  User.connection.execute "INSERT INTO users (email, encrypted_password,created_at, updated_at) VALUES #{users.join(', ')}"
  puts "added #{users.count} broswer users "
end

BidItem.transaction do
  BidItem.connection.execute "INSERT INTO bid_items (seller_id, item_name, starting_price,current_price,fixed_price, created_at, updated_at) VALUES #{bid_items.join(', ')}"
  puts "added #{bid_items.count} small bid_items "
end

Community.transaction do
  Community.connection.execute "INSERT INTO communities (name,created_at, updated_at) VALUES #{communities.join(', ')}"
  puts "added #{communities.count} communities "
end
UserCommunity.transaction do
  UserCommunity.connection.execute "INSERT INTO user_communities (community_id,user_id,created_at, updated_at) VALUES #{user_communities.join(', ')}"
  puts "added #{user_communities.count} user_communities "
end




