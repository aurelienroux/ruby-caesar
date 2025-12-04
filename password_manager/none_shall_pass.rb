require_relative "helpers"

EMAIL = "hey@hey.com"
PASSWORD = "1234"
PASSWORD_VAULT = {
  aws: {
    username: "aure",
    password: "asdf"
  }
}

welcome_message

user_email = prompt_user_for_email
verify_user_email(user_email)

user_password = prompt_user_for_password
verify_user_password(user_password)

greet_user(user_email)

loop do
  show_menu_options
  menu_selection = get_user_menu_selection
  handle_user_selection(menu_selection)
end
