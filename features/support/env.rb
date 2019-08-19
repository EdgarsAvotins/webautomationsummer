require 'webdrivers/chromedriver'
require 'selenium-webdriver'
require 'faker'

Before do
  $driver = Selenium::WebDriver.for :chrome
  $driver.get("https://www.aliexpress.com/")
  #$driver.get("https://www.sinsay.com/lv/lv/")
end

After do
  $driver.quit
end
