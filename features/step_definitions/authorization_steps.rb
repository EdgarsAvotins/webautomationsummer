When(/^I sign in$/) do
  get_element(:xpath, '//*[@id="header"]//a[@class="login"]').click
end

And(/^I create an account$/) do
  @email = Faker::Internet.email
  get_element(:xpath, '//*[@id="email_create"]').send_keys(@email)
  get_element(:xpath, '//*[@id="SubmitCreate"]').click
  sleep(0.2)
end

And(/^I input all necessary information$/) do
  #checkbox-gender
  #get_element(:xpath, '//*[@id="id_gender1"]').click

  #fill in first name field
  @name = Faker::Games::Pokemon.name
  get_element(:xpath, '//*[@id="customer_firstname"]').send_keys(@name)

  #fill in last name field
  @surname = Faker::Games::Pokemon.name

  #get_element(:xpath, '//*[@id="customer_lastname"]').click
  get_element(:xpath, '//*[@id="customer_lastname"]').send_keys(@surname)

  #fill in email field
  get_element(:xpath, '//*[@id="email"]').clear
  get_element(:xpath, '//*[@id="email"]').send_keys(@email)

  #fill in password field
  password = "Parole123"
  get_element(:xpath, '//*[@id="passwd"]').send_keys(password)

  #day
  get_element(:xpath, '//*[@id="days"]/option[8]').click

  #month
  get_element(:xpath, '//*[@id="months"]/option[9]').click

  #year
  get_element(:xpath, '//*[@id="years"]/option[33]').click

  #checkbox Sign up for our newsletter!
  get_element(:xpath, '//*[@id="newsletter"]').click

  #checkbox Sign up for our newsletter!
  get_element(:xpath, '//*[@id="optin"]').click

  #fill in First name field
  #get_element(:xpath, '//*[@id="firstname"]').clear
  get_element(:xpath, '//*[@id="firstname"]').send_keys(@name)

  #fill in Last name field
  #get_element(:xpath, '//*[@id="lastname"]').clear
  get_element(:xpath, '//*[@id="lastname"]').send_keys(@surname)

  #fill in Company field
  get_element(:xpath, '//*[@id="company"]').send_keys("Texax")

  #fill in Address field
  address1 = "Main street, Texax Company"
  get_element(:xpath, '//*[@id="address1"]').send_keys(address1)

  #fill in Address (Line 2) field
  address2 = "Appartment 17, 2nd floor"
  get_element(:xpath, '//*[@id="address2"]').send_keys(address2)

  #fill in City field
  get_element(:xpath, '//*[@id="city"]').send_keys("New York city")

  #fill in State field
  get_element(:xpath, '//*[@id="id_state"]/option[34]').click

  #fill in Zip/Postal Code field
  get_element(:xpath, '//*[@id="postcode"]').send_keys("00000")

  #fill in Country field
  get_element(:xpath, '//*[@id="id_country"]/option[2]').click

  #fill in Home phone field
  get_element(:xpath, '//*[@id="phone"]').send_keys("99999999")

  #fill in Mobile phone field
  get_element(:xpath, '//*[@id="phone_mobile"]').send_keys("88888888")

  #fill in Assign an address alias for future reference field
  get_element(:xpath, '//*[@id="alias"]').clear
  get_element(:xpath, '//*[@id="alias"]').send_keys(address1)
end

And(/^I click CREATE ACCOUNT button$/) do
  #click CREATE ACCOUNT button
  get_element(:xpath, '//*[@id="submitAccount"]/span').click
  sleep(10)
end

Then(/^I have successfully created my account$/) do
  if get_element(:xpath, '//*[@id="header"]//span').text.include? "#{@name} #{@surname}"
    p "Account is successfully created!"
  else
    p "An account was not created!"
  end
  sleep(5)
end
