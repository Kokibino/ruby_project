users = [
  # This will be the data for username & passwords
  { username: "koki", password: "password1" },
  { username: "kento", password: "password2" }
  { username: "ishida", password: "password3" },
  { username: "tetsu", password: "password4" },
]
# Method 
# This method will go through each line until it quits on its 4th try
def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
      break
      end  
    end
    "Credentials were not correct"
  end  

# 
puts "Welciome to the authenticator"
25.times { print "_" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

# 4 attempts, type in username & password: if uncorrect, 
#itll show "Credentials were not correct"
attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end
# After exceeding 4 attempts, it will show this message
puts "You have exceeded the number of attempts" if attempts == 4
