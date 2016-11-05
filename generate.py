import random

text_file = open("seeds.rb", "w")
comm_count = 0
for i in range(1,51):
    text_file.write(
        "User.create(email: '" + str(i) + "@ucsb', password: '123456', password_confirmation: '123456')\n")

    if i%10 == 1:
    	comm_count += 1
    	text_file.write(
    		"Community.create(name: 'Com" + str(comm_count) + "')\n")

    text_file.write(
    	"UserCommunity.create(community_id: " + str(comm_count) + ", user_id: " + str(i) + ")\n")

    for j in range(1,11):
        text_file.write(
            "BidItem.create(item_name: 'Item" + str(j) + "belong_to" + str(i) + "', starting_price: 10, current_price: 10, fixed_price: " + str(random.randint(800,10000)) + ", seller_id: "+ str(i) + ")\n")

text_file.close()