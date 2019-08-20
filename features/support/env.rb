require 'webdrivers/chromedriver'
require 'selenium-webdriver'
require 'faker'
require 'rspec/expectations'

Before do
  $driver = Selenium::WebDriver.for :chrome
  $driver.get("http://automationpractice.com/index.php")
end

After do
  $driver.quit
end
