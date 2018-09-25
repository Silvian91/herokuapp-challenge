require 'selenium-webdriver'
require 'cucumber'
require 'require_all'
require 'pry'

require_all 'lib'

Before do |scenario|
    @browser = Browser.new(ENV['DRIVER'])
end

After do |scenario|
    @browser.driver.quit
end

def assert(condition, message = "")
  unless condition
    raise message
  end
  
end
