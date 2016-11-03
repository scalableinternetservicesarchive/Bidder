text_file = open("Output.txt", "w")
for i in range(50):
    text_file.write("User.create(email: '"  + str(i) + "@" + str(i) + ", password: '123456', password_confirmation: '123456')\n")

text_file.close()