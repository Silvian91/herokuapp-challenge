class HerokuPage
  def initialize(driver)
    @driver = driver
  end

  HOVERS_CSS = "div.example"
  AVATARS_CSS = "div.figure"
  PROFILE_INFO_CSS = "div.figcaption"

  def verify_hovers_page
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    assert @driver.find_element(:css => HOVERS_CSS).text.include?("Hovers")
  end

  def hover_over_profile(number)
    avatars = @driver.find_elements(:css => AVATARS_CSS)
    @driver.action.move_to(avatars[number]).perform
  end

  def get_profile_info(profile_info)
    assert @driver.find_element(:xpath => "//div/h5[text()='#{profile_info}']").text.include?(profile_info)
  end

end
