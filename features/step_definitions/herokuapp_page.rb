#step definitions for tests on the login page:
Given("I am on the login page") do
  @heroku_page = @browser.open_page('http://the-internet.herokuapp.com/login')
  @heroku_page.verify_login_page
end

When("I put in the correct username {string}") do |user|
  @heroku_page.input_username(user)
end

When("I put in the correct password {string}") do |password|
  @heroku_page.input_password(password)
end

When("I click on the login button") do
  @heroku_page.verify_login_page.click
end

Then("I see the {string} message displayed") do |loggedin_message|
  @heroku_page.loggedin_screen(loggedin_message)
end

When("I put in an incorrect username like: {string}") do |user|
  @heroku_page.input_username(user)
end

Then("I see the {string} error message displayed") do |user_pass|
  @heroku_page.invalid_message(user_pass)
end

When("I put in an incorrect password like: {string}") do |password|
  @heroku_page.input_password(password)
end

#step definitions for tests on the hovers page:
Given("I am on the hovers page") do
  @heroku_page = @browser.open_page('http://the-internet.herokuapp.com/hovers')
  @heroku_page.verify_hovers_page
end

When("I hover over avatar {int}") do |number|
  number = number - 1
  @heroku_page.hover_over_profile(number)
end

Then("I see {string} displayed") do |profile_info|
  @heroku_page.get_profile_info(profile_info)
end

#step definitions for tests on the tables page:
Given("I am on the tables page") do
  @heroku_page = @browser.open_page('http://the-internet.herokuapp.com/tables')
  @heroku_page.verify_tables_page
end

When("I see the second table") do
  @heroku_page.get_second_table
end

When("I sort the Last Name column in ascending order") do
  @heroku_page.sort_ascending
end

Then("I get ascending sorted elements {string}") do |sorted_elements|
  @heroku_page.compare_ascending_elements(sorted_elements)
end

When("I sort the Last Name column in descending order") do
  @heroku_page.sort_descending
end

Then("I get descending sorted elements {string}") do |sorted_elements|
  @heroku_page.compare_descending_elements(sorted_elements)
end
