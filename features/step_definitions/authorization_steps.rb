When(/^I click on sign in link$/) do
  Element.get_element(:xpath, '//a[@class="login"]').click
end
# ----------------------------------------------------------------------------
And(/^I enter my email$/) do
  @email = Faker::Internet.email
  Element.get_element(:xpath, '//input[@id="email_create"]').send_keys(@email)
  Element.get_element(:xpath, '//button[@id="SubmitCreate"]').click
  puts "User email: #{@email}"
end
# ----------------------------------------------------------------------------
And(/^I input my personal info$/) do
  @name = Faker::Name.first_name
  Element.get_element(:id, 'customer_firstname').send_keys(@name)
  puts "User first name: #{@name}"
# -------------------------
  @surname = Faker::Name.last_name
  Element.get_element(:id, 'customer_lastname').send_keys(@surname)
  puts "User second name: #{@surname}"
# -------------------------
  @passwd = Faker::Internet.password
  Element.get_element(:id, 'passwd').send_keys(@passwd)
  puts "User password: #{@passwd}"
  # -------------------------
  rand_day = rand(0..28).to_s
  dropDownMenu = Element.get_element(:xpath, '//select[@id="days"]')
  option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
  option.select_by(:value, rand_day)


  rand_month = rand(0..12).to_s
  dropDownMenu = Element.get_element(:xpath, '//select[@id="months"]')
  option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
  option.select_by(:value, rand_month)

  rand_year = rand(1900..2019).to_s
  dropDownMenu = Element.get_element(:xpath, '//select[@id="years"]')
  option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
  option.select_by(:value, rand_year)

end
# ----------------------------------------------------------------------------
And(/^I input my address and cocntact info$/) do
  full_address = Faker::Address.full_address
  city = Faker::Address.city

  Element.get_element(:id, 'address1').send_keys(full_address)
  puts "User address: #{full_address}"

  Element.get_element(:id, 'city').send_keys(city)
  puts "User city: #{city}"

  rand_state = rand(0..50).to_s
  dropDownMenu = Element.get_element(:xpath, '//select[@id="id_state"]')
  option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
  option.select_by(:value, rand_state)

  post_code = Faker::Address.postcode
  Element.get_element(:id, 'postcode').send_keys("00000")

  phone_num = Faker::PhoneNumber.cell_phone
  Element.get_element(:id, 'phone_mobile').send_keys(phone_num)
  puts "User mobile phone num: #{phone_num}"

  alias_address = Faker::Address.street_address
  Element.get_element(:id, 'alias').send_keys(alias_address)

end
# ----------------------------------------------------------------------------
And(/^I press Register button$/) do
  begin
    Element.get_element(:id, 'submitAccount').click
  rescue
    puts "Failed to create account!"
  end
  # vajag parbaudit vai nav kada alerta
  # //*[@class="alert alert-danger"]//ol
end
# ----------------------------------------------------------------------------
Then(/^I have successfully created my account$/) do
  if Element.get_element(:xpath, '//*[@class="account"]') != nil
    puts "User #{@name} #{@surname} with #{@email} is successfully registered!"
  else
    puts "User registration failed!"
  end

end
# ----------------------------------------------------------------------------

And(/^Users name and surname is in header$/) do
  user_header = Element.get_element(:xpath, '//*[@class="account"]/span').text.to_s
  name_bool = false
  surname_bool = false

  if user_header.include?(@name)
    name_bool = true
  end

  if user_header.include?(@surname)
    surname_bool = true
  end

  if name_bool && surname_bool
    puts "Good! There is #{@name} #{@surname} in header!"
  else
    puts "Oh, shit happens, incorrect account header!"
  end

end


# When(/^I open registration form$/) do
#   # Element.get_element(:xpath, '//*[@id="gdpr-banner-accept"]').click
#   begin Element.get_element(:xpath, '//*[@class="ui-window-bd"]') != nil
#     Element.get_element(:xpath, '//*[@class="ui-window-bd"]//*[@class="close-layer"]').click
#   rescue
#     Element.get_element(:xpath, '//*[@class="user-account"]//*[@class="join-btn"]').click
#   end
#   Element.get_element(:xpath, '//*[@class="user-account"]//*[@class="join-btn"]').click
# end
#
# def input_email_and_password
#   @email ||= Faker::Internet.email
#   Element.get_element(:id, 'ws-xman-register-email').send_keys(@email)
#   @password ||= Faker::Internet.password
#   Element.get_element(:id, 'ws-xman-register-password').send_keys(@password)
# end
#
# And(/^I input my details in registration form$/) do
#   input_email_and_password
#
#   error_visible = true
#   start = Time.now
#   while Time.now - start < 10
#     error_visible = Element.check_if_visible(:xpath, '//*[@class="error-tip"][text()="error"]', timer: 1)
#     break unless error_visible
#     input_email_and_password
#   end
#   raise "Error still visible!" if error_visible
#
#
# end
#
# And(/^I press create account button$/) do
#   Element.get_element(:xpath, '//a[@id="ws-xman-register-submit"]').click
# end
#
# Then(/^User is successfully registered$/) do
#   # if Element.get_element(:xpath, '//div[@class="fail-tip"]//a[text() = "here"]') !=nil
#   #   Element.get_element(:xpath, '//div[@class="fail-tip"]//a[text() = "here"]').click
#   # end
#   welcoming_message = Element.get_element(:xpath, '//div[@class="welcome"]').text
#   expected_message = "Welcome to the AliExpress family!"
#   unless welcoming_message.include? expected_message
#     raise "Incorrect welcoming message! Expected: #{expected_message}, actual: #{welcoming_message}"
#   end
#
#   Element.get_element(:xpath, '//a[@class="shop-now"]').click
#
#   # if Element.get_element(:xpath, '//*[@data-role="olduser"]') != nil
#   #   puts "Successfully authorized!"
#   # end
# end
