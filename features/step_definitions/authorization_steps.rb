Given(/^I close the ad$/) do
  get_element(:xpath, '//a[@class="close-layer"]').click
end

When(/^I choose to Join as a new user$/) do
  get_element(:xpath, '//*[@data-role="newuser"]//span[@class="join-btn"]').click
end

def input_email_and_password
  @email = Faker::Internet.email
  get_element(:id, 'ws-xman-register-email').send_keys(@email)
  @password = Faker::Internet.password
  get_element(:id, 'ws-xman-register-password').send_keys(@password)
end

And(/^I input my email and password$/) do
  input_email_and_password

  error_visible = true
  start = Time.now
  while Time.now - start < 10
    error_visible = check_if_visible(:xpath, '//*[@class="error-tip"][text()="error"]', timer: 1)
    break unless error_visible
    input_email_and_password
  end
  raise "Error still visible!" if error_visible
end

And(/^I finish registration$/) do
  get_element(:id, 'ws-xman-register-submit').click
end

Then(/^a welcoming message appears$/) do
  welcoming_message = get_element(:xpath, '//*[@class="welcome"]').text
  expected_message = "Welcome to the AliExpress family!"
  unless welcoming_message.include? expected_message
    raise "Incorrect welcomming message! Expected: #{expected_message}, actual: #{welcoming_message}"
  end
end
