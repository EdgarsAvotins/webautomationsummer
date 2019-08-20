When (/^I choose to sign in as a new user$/) do
get_element(:xpath,'//a[@rel="nofollow"]').click
end
And (/^I input email and press create an account$/) do
  email = Faker::Internet.email
  get_element(:id,'email_create').send_keys(email)
  get_element(:id,'SubmitCreate').click

end
And (/^I input personal data and press register button$/) do
  #---------FAKER--------------
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  company = Faker::Company.name
  street = Faker::Address.street_name
  street1 = Faker::Address.street_name
  city = Faker::Address.city
  others = Faker::Demographic.race
  callnumber = Faker::PhoneNumber.cell_phone
  myAdres = Faker::Address.street_name
  #---------FAKER--------------
  get_element(:id,'id_gender1').click
  get_element(:id,'customer_firstname').send_keys(first_name)
  get_element(:id,'customer_lastname').send_keys(last_name)
  get_element(:id,'passwd').send_keys("Password123")
  #Dropdown------------------
  get_element(:id,'days').click
    get_element(:xpath,'//option[@value="22"]').click
  get_element(:id,'uniform-months').click
    get_element(:xpath,'//*[@id="months"]/option[10]').click
  get_element(:id,'years').click
    get_element(:xpath,'//option[@value="1999"]').click
  #Dropdown------------------
  get_element(:id,'newsletter').click
  get_element(:id,'optin').click
  get_element(:id,'company').send_keys(company)
  get_element(:id,'address1').send_keys(street)
  get_element(:id,'address2').send_keys(street1)
  get_element(:id,'city').send_keys(city)
  get_element(:id,'id_state').click
  get_element(:xpath,'//*[@id="id_state"]/option[4]').click
  get_element(:id,'postcode').send_keys("00000")
  get_element(:id,'other').send_keys(others)
  get_element(:id,'phone_mobile').send_keys(callnumber)
  get_element(:id,'alias').send_keys(myAdres)
  get_element(:id,'submitAccount').click
  end
  #---------If registration completed you see MY ACCOUNT----
  Then (/^I see my MY ACCOUNT$/) do
    if
      get_element(:xpath,'//*[@id="center_column"]/h1').text.include? "MY ACCOUNT"
      p "Registration completed"
    else
      p "Try again"
    end
#------------------------------------------------------------
end
