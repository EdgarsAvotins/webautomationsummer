When (/^I choose to Join as a new user$/) do
  get_element(:xpath, "//div[@class='header_user_info']//a[@class='login']").click
end

And (/^I input my email$/) do
  #Generate random email
  email = Faker::Internet.email
  get_element(:id, "email_create").send_keys(email)
  get_element(:id, "SubmitCreate").click
end

And (/^I enter my personal information$/) do
  #Generate random number (1 or 2) for gender radio buttons
  gender = rand(1..2)
  #select gender depending on random number and generate random name depending on gender
  @first_name = ""
  if gender == 1
    get_element(:id, "id_gender1").click
    @first_name = Faker::Name.male_first_name
  else
    get_element(:id, "id_gender2").click
    @first_name = Faker::Name.female_first_name
  end

  get_element(:id, "customer_firstname").send_keys(@first_name)

  #Generate and input random last name
  @last_name = Faker::Name.last_name
  get_element(:id, "customer_lastname").send_keys(@last_name)

  #Generate and input password
  password = Faker::Internet.password
  get_element(:id, "passwd").send_keys(password)

  #Select birthday data
  #Month doesent effect days in the month so it generates from 1 to 31
  day = rand(1..31)
  get_element(:xpath, "//select[@id='days']//option[@value='#{day}']").click

  month = rand(1..12)
  get_element(:xpath, "//select[@id='months']//option[@value='#{month}']").click

  year = rand(1900..2019)
  get_element(:xpath, "//select[@id='years']//option[@value='#{year}']").click

end

And (/^I enter my adress information$/) do

  #Generate and input random first name
  firstname = Faker::Name.first_name
  get_element(:id, "firstname").send_keys(firstname)

  #Generate and input random last name
  lastname = Faker::Name.last_name
  get_element(:id, "lastname").send_keys(lastname)

  #Generate and input random company
  company = Faker::Food.fruits
  get_element(:id, "company").send_keys(company)

  #Generate and input random adress1
  address1 = Faker::Address.street_address
  get_element(:id, 'address1').send_keys(address1)

  #Generate and input random adress2
  address2 = Faker::Address.secondary_address
  get_element(:id, "address2").send_keys(address2)

  #Generate and input random city
  city = Faker::Address.city
  get_element(:id, "city").send_keys(city)

  #Generate and input random state id_state
  id_state = rand(1..50)
  get_element(:xpath, "//select[@id='id_state']//option[@value='#{id_state}']").click

  #input postcode
  get_element(:id, 'postcode').send_keys("00000")

  #Select country
  get_element(:xpath, "//select[@id='id_country']//option[@value='21']").click

  get_element(:id, "phone_mobile").send_keys("22334409")

  get_element(:id, "alias").send_keys("Random Street")

end

And (/^I finish registration$/) do
  #Submit account
  get_element(:id, "submitAccount").click

end

Then (/^a welcoming message appears$/) do
  #validate user registration
  header_name_surname = get_element(:xpath, "//div[@class='header_user_info']").text

  unless header_name_surname.include? "#{@first_name} #{@last_name}"
    raise "Incorrect name and surname! Expected: #{@first_name} #{@last_name}, got: #{header_name_surname}"
  end

  sleep(2)
end
