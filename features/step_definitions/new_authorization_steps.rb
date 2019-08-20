  When (/^I press “Sign in” button$/) do
    get_element(:xpath, '//*[@id="header"]//*[@class="header_user_info"]').click
  end

  And (/^I input my email$/) do
    email = Faker::Internet.email
    get_element(:id, 'email_create').send_keys(email)
  end

  And (/^I press “Create an account” button$/) do
    get_element(:id, 'SubmitCreate').click
  end

  And (/^I enter all providences information$/) do
    get_element(:id, 'id_gender1').click
    firsname = Faker::Name.first_name
    get_element(:id, 'customer_firstname').send_keys(firsname)
    surname = Faker::Name.last_name
    get_element(:id, 'customer_lastname').send_keys(surname)
    password = Faker::Internet.password
    get_element(:id, 'passwd').send_keys(password)
    # birthday
    get_element(:id, 'days').click
    get_element(:xpath, '//*[@id="days"]//*[@value="1"]').click
    get_element(:id, 'months').click
    get_element(:xpath, '//*[@id="months"]//*[@value="2"]').click
    get_element(:id, 'years').click
    get_element(:xpath, '//*[@id="years"]//*[@value="1998"]').click

    adress = Faker::Address.full_address
    get_element(:id, 'address1').send_keys(adress)
    city = Faker::Address.city
    get_element(:id, 'city').send_keys(city)
    # state
    get_element(:id, 'id_state').click
    get_element(:xpath, '//*[@id="id_state"]//*[@value="10"]').click

    get_element(:id, 'uniform-id_state').click
    get_element(:id, 'postcode').send_keys("00000")
    # country
    get_element(:id, 'id_country').click
    get_element(:xpath, '//*[@id="id_country"]//*[@value="21"]').click

    get_element(:id, 'phone_mobile').send_keys("299999938")
    get_element(:id, 'alias').send_keys(firsname)
  end

  And (/^I press “Register” button$/) do
    get_element(:id, 'submitAccount').click
  end

  Then (/^appears text “My account”$/) do
    welcoming_message = get_element(:xpath, '//*[@id="center_column"]//*[@class="info-account"]').text
      expected_message = "Welcome to your account. Here you can manage all of your personal information and orders."
      unless welcoming_message.include? expected_message
        raise "Incorrect welcomming message! Expected: #{expected_message}, actual: #{welcoming_message}"
      end
    end
