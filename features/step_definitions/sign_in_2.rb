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
  first_name = Faker::Name.first_name
  get_element(:xpath, '//*[@id="customer_firstname"]').send_keys(first_name)
end

And (/^I input last name$/) do
  last_name = Faker::Name.last_name
  get_element(:xpath, '//*[@id="customer_lastname"]').send_keys(last_name)
end

And (/^I input a password$/) do
  password = Faker::Internet.password
  get_element(:xpath, '//*[@id="passwd"]').send_keys(password)
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
  company_name = Faker::Company.name
  get_element(:xpath, '//*[@id="company"]').send_keys(company_name)
end

And (/^I input address$/) do
  street_name = Faker::Address.street_name
  get_element(:xpath, '//*[@id="address1"]').send_keys(street_name)
end

And (/^I input address in line 2$/) do
  building_number = Faker::Address.building_number
  get_element(:xpath, '//*[@id="address2"]').send_keys(building_number)
end


And (/^I input city$/) do
  city = Faker::Address.city
  get_element(:xpath, '//*[@id="city"]').send_keys(city)
end

And (/^I choose a state$/) do
  get_element(:xpath, '//*[@id="id_state"]/*[@value="33"]').click
end

And (/^I input postal code$/) do
  postcode = Faker::Address.postcode
  get_element(:xpath, '//*[@id="postcode"]').send_keys(postcode)
end

And (/^I input home phone$/) do
  phone_number = Faker::PhoneNumber.phone_number
  get_element(:xpath, '//*[@id="phone"]').send_keys(phone_number)
end

And (/^I input mobile phone$/) do
  cell_phone = Faker::PhoneNumber.cell_phone
  get_element(:xpath, '//*[@id="phone_mobile"]').send_keys(cell_phone)
end

And (/^I input address in last text field$/) do
  get_element(:xpath, '//*[@id="alias"]').send_keys("Rigas")
end

Then (/^I click "Register" button$/) do
  #sleep(20)
  get_element(:xpath, '//*[@id="submitAccount"]').click
end
