# When (/^I open registration form$/) do
#  get_element(:xpath, '//*[text()="x"]').click
#  get_element(:xpath, '//*[@id="user-benefits"]//*[text()="Join"]').click
# end
#
# And (/^I input my details in regestration form and create account$/) do
#
#   # email field
#   email = Faker::Internet.email
#   get_element(:id, 'ws-xman-register-email').send_keys(email)
#
#   # password field
#   password = Faker::Internet.password
#   get_element(:id, 'ws-xman-register-password').send_keys(password)
#
#   get_element(:id, 'ws-xman-register-submit').click
#   get_element(:xpath, '//*[@class="shop-now"]').click
# end
#
# Then (/^I input "(.+)" in the search field and find product$/) do |input_text|
# get_element(:id, 'search-key').send_keys(input_text)
# get_element(:xpath, '//*[@class="search-button"]').click
# end
#
# And (/^I choose first phone$/) do
#   get_element(:xpath, '//*/li[1]/div/div/a/img').click
#   element=get_element(:xpath, '//*[@role="dialog"]')
#   $driver.action.move_to(element).perform
#   get_element(:xpath, '//*[@class="next-dialog-close"]').click
#   #get_element(:xpath, '/html/body/div[13]/div[2]/div/a').click
#   sleep(5)
# end
#
# Then (/^I sign out$/) do
# element=get_element(:xpath, '//*[@class="user-account-info"]')
# $driver.action.move_to(element).perform #Need for dropdown
# get_element(:xpath, '//*[@id="nav-user-account"]//*[text()="Sign Out"]').click
# sleep(5)
# end

Given (/^I close app$/) do
get_element(:xpath, '//*[text()="x"]').click
end

When (/^I choose to Join ad a new user$/) do
get_element(:xpath, '//*[@id="user-benefits"]//*[text()="Join"]').click
end

def input_email_and_password
  # email field
  email = Faker::Internet.email
  get_element(:id, 'ws-xman-register-email').send_keys(email)

  # password field
  password = Faker::Internet.password
  get_element(:id, 'ws-xman-register-password').send_keys(password)
end

And (/^I put my email and password$/) do
input_email_and_password

error_visible=false

start=Time.now
while Time.now - start < 10
error_visible=check_if_visible(:xpath, '//*[@class="error-tip"][text()="error"]', timer: 2)
break unless error_visible
input_email_and_password
end
raise "Error still visible!" if error_visible
end

And (/^I finish regestration$/) do
  get_element(:id, 'ws-xman-register-submit').click
  #get_element(:xpath, '//*[@class="shop-now"]').click
end

Then (/^a welcoming message appears$/) do
  welcoming_message = get_element(:xpath, '//*[@class="welcome"]').text
  expected_message = "Welcome to the AliExpress family!"
  unless welcoming_message.include? expected_message
    raise "Incorrect welcomming message! Expected: #{expected_message}, actual: #{welcoming_message}"
  end
end
