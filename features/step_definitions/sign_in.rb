When (/^I click sign in$/) do
  get_element(:xpath, '//a[@class="login"]').click
end

And (/^I input my email address$/) do
  email = Faker::Internet.email
  get_element(:xpath, '//*[@id="email_create"]').send_keys(email)
end

And (/^I click "Create an account" button$/) do
  get_element(:xpath, '//*[@id="SubmitCreate"]').click
end

And (/^I choose Mr. sex$/) do
  get_element(:xpath, '//*[@id="uniform-id_gender1"]').click
end

And (/^I input first name$/) do
  get_element(:xpath, '//*[@id="customer_firstname"]').send_keys("Alex")
end

And (/^I input last name$/) do
  get_element(:xpath, '//*[@id="customer_lastname"]').send_keys("Fedorov")
end

And (/^I input a password$/) do
  get_element(:xpath, '//*[@id="passwd"]').send_keys("Alex1984$")
end

And (/^I select a date of birth$/) do
  get_element(:xpath, '//*[@id="days"]/*[@value="2"]').click
end

And (/^I select a month of birth$/) do
  get_element(:xpath, '//*[@id="months"]/*[@value="1"]').click
end

And (/^I select a year of birth$/) do
  get_element(:xpath, '//*[@id="years"]/*[@value="1984"]').click
end

And (/^I input a company$/) do
  get_element(:xpath, '//*[@id="company"]').send_keys("Tiesto")
end

And (/^I input address$/) do
  get_element(:xpath, '//*[@id="address1"]').send_keys("Rigas")
end

And (/^I input address in line 2$/) do
  get_element(:xpath, '//*[@id="address2"]').send_keys("22-12")
end

And (/^I input city$/) do
  get_element(:xpath, '//*[@id="city"]').send_keys("NewYork")
end

And (/^I choose a state$/) do
  get_element(:xpath, '//*[@id="id_state"]/*[@value="33"]').click
end

And (/^I input postal code$/) do
  get_element(:xpath, '//*[@id="postcode"]').send_keys("00000")
end

And (/^I input home phone$/) do
  get_element(:xpath, '//*[@id="phone"]').send_keys("27883650")
end

And (/^I input mobile phone$/) do
  get_element(:xpath, '//*[@id="phone_mobile"]').send_keys("27883650")
end

And (/^I input address in last text field$/) do
  get_element(:xpath, '//*[@id="alias"]').send_keys("Rigas")
end

Then (/^I click "Register" button$/) do
  #sleep(10)
  get_element(:xpath, '//*[@id="submitAccount"]').click
end

# Then(/^a welcoming message appears$/) do
#   welcoming_message = get_element(:xpath, '//*[@class="welcome"]').text
#   expected_message = "Welcome to the AliExpress family!"
#   unless welcoming_message.include? expected_message
#     raise "Incorrect welcomming message! Expected: #{expected_message}, actual: #{welcoming_message}"
#   end
# end




#   get_element(:xpath, '//a[@class="close-layer"]').click
#   get_element(:id, 'ws-xman-register-password').send_keys(password)
