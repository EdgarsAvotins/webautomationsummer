When (/^I open the sign in form$/)do
  get_element(:xpath, '//*[@id="header"]//*[@class="login"]').click
end

And (/^I input my email in "Create an account" field$/)do
  @email = Faker::Internet.email
  get_element(:id, "email_create").send_keys(@email)
  get_element(:id, "SubmitCreate").click
end

And (/^I input my personal data$/)do
  get_element(:id, "id_gender1").click

  @name = Faker::Games::Pokemon.name
  get_element(:id, "customer_firstname").send_keys(@name)

  @last_name = Faker::Games::Pokemon.name
  get_element(:id, "customer_lastname").send_keys(@last_name)

  password = Faker::Games::Pokemon.name
  get_element(:id, "passwd").send_keys(password)

  get_element(:xpath, "//*[@id='days']//*[@value='#{rand(1..10)}']").click

  get_element(:xpath, "//*[@id='months']//*[@value='#{rand(1..10)}']").click

  get_element(:xpath, '//*[@id="years"]//*[@value="1994"]').click

  get_element(:id, "newsletter").click
  get_element(:id, "optin").click
end

And (/^I input my adress information$/)do
  get_element(:id, "address1").send_keys("Jatnieku 77")
  get_element(:id, "city").send_keys("Depchiks")

  get_element(:xpath, '//*[@id="id_state"]//*[@value="11"]').click

  get_element(:id, "postcode").send_keys("00000")

  get_element(:xpath, '//*[@id="id_country"]//*[@value="21"]').click

  get_element(:id, "phone_mobile").send_keys("499382934939482")

  nickname = Faker::Games::Pokemon.name
  get_element(:id, "alias").send_keys(nickname)

  get_element(:id, "submitAccount").click
end

Then (/^I validate that I am registered$/)do
  name_lastname = get_element(:xpath, '//*[@title="View my customer account"]')

  my_name = "#{@name} " + "#{@last_name}"
  shown_name = name_lastname.text
  unless name_lastname.text.include? my_name
     raise "Incorrect name! Expected: '#{my_name}', got: #{shown_name} !"
   end
  puts " Shown name: #{shown_name} match expected name: #{my_name} ! "
end
