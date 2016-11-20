n = 0
r = Random.new

(1..800).each do |i|
	User.create(email: i.to_s+'_broswer@ucsb', password: '123456', password_confirmation: '123456')
	n += 1
end

puts 'generated broswing users'

(1..150).each do |i|
	User.create(email: i.to_s+'_small@ucsb', password: '123456', password_confirmation: '123456')
	n += 1

	total = r.rand(1..10)
	total.times do |j|
		BidItem.create(item_name: j.to_s+'item_of_small_'+i.to_s, starting_price: 10, current_price: 10, fixed_price: r.rand(800..10000), seller_id: n)
	end
end

(1..50).each do |i|
	User.create(email: i.to_s+'_big@ucsb', password: '123456', password_confirmation: '123456')
	n += 1

	total = r.rand(100..500)
	total.times do |j|
		BidItem.create(item_name: j.to_s+'item_of_big_'+i.to_s, starting_price: 10, current_price: 10, fixed_price: r.rand(800..10000), seller_id: n)
	end
end

(1..10).each do |i|
	Community.create(name: 'Community_'+i.to_s)
end

(1..1000).each do |i|
	UserCommunity.create(community_id: r.rand(1..10), user_id: i) 
end