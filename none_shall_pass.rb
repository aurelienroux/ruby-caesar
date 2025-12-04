EMAIL = "hey@hey.com"
PASSWORD = "1234"
PASSWORD_VAULT = {
  aws: {
    username: "aure",
    password: "asdf"
  }
}

puts "Welcome to None Shall Pass - A password manager"
puts "Please sign in to continue"
print "Enter email: "

user_email = gets.chomp

if user_email == EMAIL
  print "Enter password: "
  user_password = gets.chomp

else
  print "not ok"
  exit
end

if user_password != PASSWORD
  puts "wrong credentials, sorry..."
  exit
else
  puts "Hello #{user_email}"
  puts "What do you want to do ?"
  puts "1. Add new service cred"
  puts "2. Retrieve an existing services's credentials"
  puts "3. Exit"
  user_selection = gets.chomp
end

case user_selection
when "1"
  puts "Create new service cred"
  new_service = gets.chomp
  PASSWORD_VAULT[new_service] = {}

  puts "Please enter the username for this service"
  username = gets.chomp
  PASSWORD_VAULT[new_service][:username] = username

  puts "Please enter the password for this new service"
  password = gets.chomp
  PASSWORD_VAULT[new_service][:password] = password

  p PASSWORD_VAULT
when "2"
  print "Please enter the name of the service you wish to access credentials for: "
  service_name = gets.chomp
  credentials = PASSWORD_VAULT[service_name.to_sym]

  puts "Here are the credentials for #{service_name}"
  credentials.each do |key, val|
    puts "#{key}: #{val}"
  end
else
  puts "Exiting program. Bye!"
  exit
end
