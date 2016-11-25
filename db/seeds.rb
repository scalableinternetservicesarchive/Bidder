r = Random.new
o = [('a'..'z')].map { |i| i.to_a }.flatten


puts 'Generating 1000 users...'
(1..1000).each do |i|
	User.create(email: i.to_s+'@ucsb', password: '123456', password_confirmation: '123456')
end
puts 'Generated 1000 users.'

puts 'Generating items for small sellers (id: 1 to 150)...'
(1..150).each do |i|
	total = r.rand(1..10)
	total.times do |j|
		BidItem.create(item_name: (0...10).map { o[rand(o.length)] }.join, starting_price: 200, current_price: 200, fixed_price: r.rand(15000..50000), seller_id: i)
	end
end

puts 'Generating items for big sellers (id: 151 to 200)...'
(151..200).each do |i|
	total = r.rand(100..500)
	total.times do |j|
		BidItem.create(item_name: (0...10).map { o[rand(o.length)] }.join, starting_price: 10, current_price: 10, fixed_price: r.rand(15000..50000), seller_id: i)
	end
end

(1..10).each do |i|
	Community.create(name: 'Community_'+i.to_s)
end

(1..1000).each do |i|
	UserCommunity.create(community_id: r.rand(1..10), user_id: i) 
end