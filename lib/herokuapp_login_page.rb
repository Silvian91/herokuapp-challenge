class HerokuPage
  def initialize(driver)
    @driver = driver
  end

  LOGIN_BUTTON_CSS = "i.fa-sign-in"
  USERNAME_FIELD_CSS = "input#username"
  PASSWORD_FIELD_CSS = "input#password"
  LOGGEDIN_BANNER_CSS = "div.flash"
  INCORRECT_USER_PASS_MESSAGE_CSS = "div#flash.error"

  def verify_login_page
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { @driver.find_element(:css => LOGIN_BUTTON_CSS) }
  end

  def input_username(user)
    @driver.find_element(:css => USERNAME_FIELD_CSS).send_keys(user)
  end

  def input_password(password)
    @driver.find_element(:css => PASSWORD_FIELD_CSS).send_keys(password)
  end

  def loggedin_screen(loggedin_message)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    assert wait.until { @driver.find_element(:css => LOGGEDIN_BANNER_CSS).text.include?(loggedin_message) }
  end

  def invalid_message(user_pass)
    assert @driver.find_element(:css => INCORRECT_USER_PASS_MESSAGE_CSS).text.include?(user_pass)
  end

end
