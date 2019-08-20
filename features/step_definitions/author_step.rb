When(/^step$/) do
  get_element(:xpath, '//*[@class="login"]').click
  # .login click

  email = Faker::Internet.email
  password = Faker::Internet.password
  get_element(:id, 'email_create').send_keys("nwkrjgn@wkejgnh.com")
  #email_create id send

  get_element(:id, 'SubmitCreate').click
  #SubmitCreate

  get_element(:id, 'id_gender1').click
  #id_gender1 id click

  get_element(:id, 'customer_firstname').send_keys("Janis")
  #customer_firstname
  get_element(:id, 'customer_lastname').send_keys("Berzins")
  #customer_lastname
  get_element(:id, 'email').click
  # email id click
  get_element(:id, 'passwd').send_keys("Parole123")
  # passwd

  get_element(:id, 'days').click
  # days id click
  get_element(:xpath, '//*[@id="days"]/option[@value="5"]').click
  # //*[@id="days"]/option[@value="5"]

  get_element(:id, 'months').click
  # months id click
  get_element(:xpath, '//*[@id="months"]/option[@value="3"]').click
  # //*[@id="months"]/option[@value="3"]

  get_element(:id, 'years').click
  # years click
  get_element(:xpath, '//*[@id="years"]/option[@value="2016"]').click
  # //*[@id="years"]/option[@value="2016"]

  get_element(:id, 'newsletter').click
  #newsletter
  get_element(:id, 'optin').click
  #optin

  get_element(:id, 'address1').send_keys("Agelss")
  # address1

  get_element(:id, 'city').send_keys("Ioxcvd")
  # city

  get_element(:id, 'id_state').click
  # id_state id click
  get_element(:xpath, '//*[@id="id_state"]/option[@value="3"]').click
  # //*[@id="id_state"]/option[@value="3"]

  get_element(:id, 'postcode').send_keys("00000")
  # postcode

  get_element(:id, 'phone_mobile').send_keys("26188391")
  # phone_mobile

  get_element(:id, 'alias').send_keys("something")
  # alias id input email maybe

  get_element(:id, 'submitAccount').click
  # submitAccount click

  sleep(2)
  get_element(:xpath, '//*[contains(text(),"Welcome to your account" text find")]')
  # "Welcome to your account" text find
end
