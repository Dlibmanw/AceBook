def sign_up(email, password)
  visit('/users/sign_up')
  fill_in "user_email", with: email
  fill_in "user_password", with: password
  click_button("Sign up")
end

def sign_up_with_name(name, email, password)
  visit('/users/sign_up')
  fill_in "user_name", with: name
  fill_in "user_email", with: email
  fill_in "user_password", with: password
  click_button("Sign up")
end

def create_test_user_and_login(email, password)
  User.create(name: 'Test Name', email: email, password: password)
  visit('/posts')
  fill_in "user_email", with: email
  fill_in "user_password", with: password
  click_button("Log in")
end 

def create_post(message)
  click_button "New Post"
  fill_in "Message", with: message
  click_button "Submit"
end
