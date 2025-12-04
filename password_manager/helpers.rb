def welcome_message
  puts "Welcome to None Shall Pass - A password manager"
end

def prompt_user_for_email
  puts "Please sign in to continue"
  print "Enter email: "
  gets.chomp
end

def verify_user_email(user_email)
  if user_email != EMAIL
    puts "Invalid email"
    exit
  end
end

def prompt_user_for_password
  print "Enter password: "
  gets.chomp
end

def verify_user_password(user_password)
  if user_password != PASSWORD
    puts "Invalid password"
    exit
  end
end

def greet_user(user_email)
  puts "Hello #{user_email}"
  puts "What do you want to do ?"
end

def show_menu_options
  puts "1. Add new service cred"
  puts "2. Retrieve an existing services's credentials"
  puts "3. Exit"
end

def get_user_menu_selection
  gets.chomp
end

def handle_user_selection(user_selection)
  case user_selection
  when "1"
    service_name = set_new_service_name
    set_new_username(service_name)
    set_new_password(service_name)
    display_credentials(service_name)
    p PASSWORD_VAULT
  when "2"
    service_name = access_service
    display_credentials(service_name)
  else
    puts "Exiting program. Bye!"
    exit
  end
end

def set_new_service_name
  print "Enter the name of the service: "
  new_service = gets.chomp.to_sym
  PASSWORD_VAULT[new_service] = {}
  new_service
end

def set_new_username(new_service)
  print "Please enter the username for this service: "
  username = gets.chomp.to_sym
  PASSWORD_VAULT[new_service][:username] = username
  username
end

def set_new_password(new_service)
  print "Please enter the password for this new service: "
  password = gets.chomp.to_sym
  PASSWORD_VAULT[new_service][:password] = password
  password
end

def access_service
  print "Please enter the name of the service you wish to access credentials for: "
  gets.chomp
end

def display_credentials(service_name)
  puts "Here are the credentials for #{service_name}"
  credentials = PASSWORD_VAULT[service_name.to_sym]
  credentials.each do |key, val|
    puts "#{key}: #{val}"
  end
end
