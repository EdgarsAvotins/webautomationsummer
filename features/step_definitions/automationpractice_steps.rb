# //*[@class="header_user_info"] #sign in
# //*[@id="email_create"] #email_create
# //*[@id="SubmitCreate"] #submit
# //*[@id="uniform-id_gender1"] #mr
# //*[@id="customer_firstname"] #firstname
# //*[@id="customer_lastname"] #lastname
# //*[@id="passwd"] #password
# //*[@id="uniform-days"] #click to days
# //*[@id="uniform-newsletter"]
# //*[@id="optin"]

When (/^I open registration form$/) do
get_element(:xpath, '//*[@class="header_user_info"]').click
end

And (/^I input email and click on "Create an account"$/) do
  # email field
  email = Faker::Internet.email
  get_element(:id, 'email_create').send_keys(email)
  get_element(:id, 'SubmitCreate').click
  sleep(2) # Need that page will be reloaded and not be a lot of "retry" in terminal
end

And (/^I choose gender$/) do
gender=rand(1..2)
get_element(:id, "uniform-id_gender#{gender}").click
end

And (/^I input random first name, last name and password$/) do
  # firstname field
  @firstname=Faker::Games::Pokemon.name
  # lastname field
  @lastname=Faker::Games::Pokemon.name
  # password field
  password = Faker::Internet.password

  get_element(:id, 'customer_firstname').send_keys(@firstname)
  get_element(:id, 'customer_lastname').send_keys(@lastname)
  get_element(:id, 'email').click
  get_element(:id, 'passwd').send_keys(password)
end

And (/^I choose random birthdate$/) do
  @day=rand(1..30)
  month=rand(1..12)
  year=rand(1900..2018)

#Need ".join" that not be [9], because need 9
  get_element(:xpath, "//*[@id='days']/option[@value=#{@day}]").click
  get_element(:xpath, "//*[@id='months']/option[@value=#{month}]").click
  get_element(:xpath, "//*[@id='years']/option[@value=#{year}]").click
end

And (/^I choose to take newsletter and special offers$/) do
  get_element(:id, 'uniform-newsletter').click
  get_element(:id, 'optin').click
end

And (/^I input random address and city$/) do
  #address field
  @address = Faker::Address.street_address
  #city field
  city=Faker::Address.city

  get_element(:id, 'address1').send_keys(@address)
  get_element(:id, 'city').send_keys(city)
end

And (/^I choose random state and input random zipcode$/) do

state=rand(1..50)
  zip=5.times.map{ 0 + Random.rand(9) }

  get_element(:xpath, "//*[@id='id_state']/option[@value=#{@day}]").click
  get_element(:id, 'postcode').send_keys(zip)
end

And (/^I input random mobile phone and my address$/) do
phone=8.times.map{ 0 + Random.rand(9) }

get_element(:id, 'phone_mobile').send_keys(phone)
get_element(:id, 'alias').clear #clear text "my address"
get_element(:id, 'alias').send_keys(@address)
end

And (/^I finished registration$/) do
get_element(:id, 'submitAccount').click
sleep(1)
end

Then (/^I check my name$/) do
  got_name = get_element(:xpath, '//*[@class="account"]').text
  expected_name = "#{@firstname} #{@lastname}"
  unless got_name.include? expected_name
    raise "Incorrect username! Expected: #{expected_name}, got: #{got_name}"
  end
    p "Correct username! Expected: #{expected_name}, got: #{got_name}"
end

And (/^I click on "Dresses"$/) do
  get_element(:xpath, '//*[@id="block_top_menu"]/ul/li[2]').click
end

And (/^I choose first dress "Printed dress" and add it to wish list$/) do
  element=get_element(:xpath, '//*/li[1]/div/div[1]/div/a[1]/img')
  $driver.action.move_to(element).perform
  get_element(:xpath, '//*[@rel="3"]').click
end

And (/^I go in my account and click on "MY WISHLISTS"$/) do
  get_element(:xpath, '//*[@class="account"]').click
  get_element(:xpath, '//*[@title="My wishlists"]').click
end

And (/^I check product date$/) do
  got_date = get_element(:xpath, '//td[4]').text
  expected_date = Time.now.strftime("%Y-%m-%d")
  unless got_date.include? expected_date
    raise "Incorrect date! Expected: #{expected_date}, got: #{got_date}"
  end
    p "Correct date! Expected: #{expected_date}, got: #{got_date}"
end

And (/^I sign out$/) do
get_element(:xpath, '//*[@title="Log me out"]').click
end

# And (/^I check firstname$/) do
# sleep(0.2)
#   got_firstname = get_element(:id, 'firstname').text
#   expected_firstname = "#{@firstname}"
#
#   unless got_firstname.include? expected_firstname
#     raise "Incorrect firstname! Expected: #{expected_firstname}, got: #{got_firstname}"
#   end
#   p "Correct firstname! Expected: #{expected_firstname}, got: #{got_firstname}"
# end
#
# And (/^I check lastname$/) do
#   sleep(0.2)
#   got_lastname = get_element(:id, 'lastname').text
#   expected_lastname = "#{@lastname}"
#
#   unless got_lastname.include? expected_lastname
#     raise "Incorrect lastname! Expected: #{expected_lastname}, got: #{got_lastname}"
#   end
#   p "Correct lastname! Expected: #{expected_lastname}, got: #{got_lastname}"
# end
