text_file = open("seeds.rb", "w")
for i in range(50):
    text_file.write(
        "User.create(email: '" + str(i) + "@" + str(i) + "', password: '123456', password_confirmation: '123456')\n")


    for j in range(10):
        text_file.write(
            "BidItem.create(item_name: '" + "Item" + str(j) + "belong_to" + str(i) + "', starting_price: 10, current_price: 10, fixed_price: 1000, seller_id: "+ str(i+1) + ")\n")

text_file.close()