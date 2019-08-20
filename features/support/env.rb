require 'webdrivers/chromedriver'
require 'selenium-webdriver'
require 'faker'

Before do
  $driver = Selenium::WebDriver.for :chrome
#  $driver.get("https://www.ebay.com/") # +
#  $driver.get("https://aliexpress.com") # +
  $driver.get("http://automationpractice.com")
end

After do
  $driver.quit
end
