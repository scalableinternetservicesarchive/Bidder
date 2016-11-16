import random

text_file = open("seeds.rb", "w")

# for user count
n = 0

# generate big seller, id = 1...100
for i in range(1,101):
    text_file.write(
        "User.create(email: '" + str(i) + "_big@ucsb', password: '123456', password_confirmation: '123456')\n")
    n += 1

    item_big_seller = random.randint(100,200)
    for j in range(1, item_big_seller):
        text_file.write(
            "BidItem.create(item_name: 'Item" + str(j) + "_of_big_" + str(i) + 
            "', starting_price: 10, current_price: 10, fixed_price: " + 
            str(random.randint(800,10000)) + ", seller_id: "+ str(n) + ")\n")

# generate big seller, id = 101...200
for i in range(1,101):
    text_file.write(
        "User.create(email: '" + str(i) + "_medium@ucsb', password: '123456', password_confirmation: '123456')\n")
    n += 1

    item_medium_seller = random.randint(30,50)
    for j in range(1, item_medium_seller):
        text_file.write(
            "BidItem.create(item_name: 'Item" + str(j) + "_of_medium_" + str(i) +
            "', starting_price: 10, current_price: 10, fixed_price: " + 
            str(random.randint(800,10000)) + ", seller_id: "+ str(n) + ")\n")

# generate big seller, id = 201...700
for i in range(1,501):
    text_file.write(
        "User.create(email: '" + str(i) + "_small@ucsb', password: '123456', password_confirmation: '123456')\n")
    n += 1

    item_small_seller = random.randint(30,50)
    for j in range(1, item_small_seller):
        text_file.write(
            "BidItem.create(item_name: 'Item" + str(j) + "_of_samll_" + str(i) +
            "', starting_price: 10, current_price: 10, fixed_price: " + 
            str(random.randint(200,1000)) + ", seller_id: "+ str(n) + ")\n")

# generate broswer, id = 701...1000
for i in range(1,301):
    text_file.write(
        "User.create(email: '" + str(i) + "_broswer@ucsb', password: '123456', password_confirmation: '123456')\n")
    n += 1

# generate community

for i in range(1,11):
    text_file.write(
      "Community.create(name: 'Community_" + str(i) + "')\n")

for i in range(1,1001):
    text_file.write(
      "UserCommunity.create(community_id: " + str(random.randint(1,10)) + ", user_id: " + str(i) + ")\n")


text_file.close()