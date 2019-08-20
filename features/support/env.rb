require 'webdrivers/chromedriver'
require 'selenium-webdriver'
require 'faker'
Before do
  $driver = Selenium::WebDriver.for :chrome
  $driver.get("http://automationpractice.com/index.php")
end

# After do
#   $driver.quit
# end
