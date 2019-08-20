When(/^I choose to Join as a new user by clicking sign in button$/) do
  get_element(:xpath, '//*[@class="login"]').click #sign in button
end

And(/^I enter my email$/) do
  email = Faker::Internet.email #generating random email
  get_element(:id, 'email_create').send_keys(email) #using previously generated email
end

And(/^I press create an account$/) do
  get_element(:id, 'SubmitCreate').click #goes to registration form
end

And(/^I complete registration form$/) do
#Gender
  get_element(:id, 'uniform-id_gender1').click #can be optimized by randomizing gender
#First name
  get_element(:id, 'customer_firstname').send_keys(Faker::Name.name) #randomized first name input
#Last name
  get_element(:id, 'customer_lastname').send_keys(Faker::Name.last_name) #randomized last name input
#Password(five chars min)
  get_element(:id, 'passwd').send_keys(Faker::Internet.password) #randomized password input
#Date of birth(necessary)
  #day
  get_element(:id, 'days').click #opens dropown
  get_element(:xpath, '//*[@id="days"]/*[@value="3"]').click #selects value
  #month
  get_element(:id, 'months').click #opens dropown
  get_element(:xpath, '//*[@id="months"]/*[@value="3"]').click #selects value
  #year
  get_element(:id, 'years').click #opens dropown
  get_element(:xpath, '//*[@id="years"]/*[@value="1998"]').click #selects value
#Address
  get_element(:id, 'address1').send_keys(Faker::Address.full_address) #randomized address input
#City
  get_element(:id, 'city').send_keys(Faker::Address.city) #randomized city input
#State
  get_element(:id, 'id_state').send_keys(Faker::Address.state) #randomized state input
#Zip code
  get_element(:id, 'postcode').send_keys("00000") #Zip code input
#Mobile phone number
  get_element(:id, 'phone_mobile').send_keys(Faker::PhoneNumber.cell_phone) #randomized phone number
end

And(/^I press register button$/) do
  get_element(:id, 'submitAccount').click #complete registration
end

Then(/^I get greeted by message "(.+)"$/) do |expected_message|
  welcoming_message = get_element(:xpath, '//*[@class="info-account"]').text #gets recieved message
  #comoares welcoming messages
  unless welcoming_message.include? expected_message
    raise "Incorrect welcomming message! Expected: #{expected_message}, actual: #{welcoming_message}"
  end
end




















# #register=======================================================================
#
# Given(/^I close the ad$/) do
#   get_element(:xpath, '//*[@class="close-layer"]').click #close add
# end
#
# When(/^I choose to Join as a new user$/) do
#   get_element(:xpath, '//*[@data-role="newuser"]//span[@class="join-btn"]').click #press join button
# end
#
# def input_email_and_password
#   email = Faker::Internet.email
#   get_element(:id, 'ws-xman-register-email').send_keys(email)
#
#   password = Faker::Internet.password
#   get_element(:id, 'ws-xman-register-password').send_keys(password)
# end
#
# And(/^I input my email and password$/) do
#   input_email_and_password
#   err_visible = false
#   start = Time.now
#   while Time.now - start < 10
#     err_visible = check_if_visible(:xpath, '//*[@class="error-tip"][text()="error"]', timer: 2)
#     break unless err_visible
#     input_email_and_password
#   end
#   raise "Error still visible!" if err_visible
# end
#
# And(/^I finish registration$/) do
#   get_element(:id, 'ws-xman-register-submit').click
# end
#
# Then(/^a welcoming message appears$/) do
#   welcoming_message = get_element(:xpath, '//*[@class="welcome"]').text
#   expected_message = "Welcome to the AliExpress family!"
#   unless welcoming_message.include? expected_message
#     raise "Incorrect welcomming message! Expected: #{expected_message}, actual: #{welcoming_message}"
#   end
# end
#
# #add to cart====================================================================
#
# When(/^I input "(.+)" into the search field$/) do |input_text|
#   get_element(:xpath, '//*[@class="search-key-box"]/*[@class="search-key"]').send_keys(input_text)
#   get_element(:xpath, '//*[@class="search-button"]').click
# end
#
# And(/^I choose to sort by "Newest"$/) do
#   get_element(:xpath, '//*[@ae_object_value="date_added"]').click
# end
#
# And(/^I open the first option$/) do
# #//*[@product-index="0"]//*[@class="item-img"]
# #get_element(:xpath, '//[@product-index="0"]//[@class="item-title"]').click
# end
#
# And(/^I choose the first color$/) do
#
# end
#
# And(/^I choose size "M"$/) do
#
# end
#
# And(/^I Add to Cart$/) do
#
# end
