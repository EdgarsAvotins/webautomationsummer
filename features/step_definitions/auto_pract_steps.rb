When (/^I click on "Sign in"$/) do
get_element(:xpath, '//*[@id="header"]//*[@class="header_user_info"]//*[@class="login"]').click
end

And (/^I enter my email$/) do
  @mail=Faker::Internet.email
  get_element(:xpath, '//*[@name="email_create"]').click
  get_element(:xpath, '//*[@name="email_create"]').send_keys(@mail)
end

And (/^I press "Create an account"$/) do
  get_element(:xpath, '//*[@class="btn btn-default button button-medium exclusive"]').click
end

And (/^I fill in my information$/) do
  @fname=Faker::Games::Pokemon.name
  @lname=Faker::Games::Pokemon.name
  @fullname=@fname
  @fullname+=" " + @lname
  @pswrd=Faker::Internet.password
  get_element(:xpath, '//*[@id="customer_firstname"]').send_keys(@fname)
  get_element(:xpath, '//*[@id="customer_lastname"]').send_keys(@lname)
  get_element(:xpath, '//*[@id="passwd"]').send_keys(@pswrd)

  get_element(:xpath, '//*[@id="days"]').click
  get_element(:xpath, '//*[@id="days"]//*[@value="15"]').click

  get_element(:xpath, '//*[@id="months"]').click
  get_element(:xpath, '//*[@id="months"]//*[@value="6"]').click

  get_element(:xpath, '//*[@id="years"]').click
  get_element(:xpath, '//*[@id="years"]//*[@value="1942"]').click

  get_element(:xpath, '//*[@id="address1"]').send_keys("Jump street 21")
  get_element(:xpath, '//*[@name="id_state"]').click
  get_element(:xpath, '//*[@name="id_state"]//*[@value="1"]').click
  get_element(:xpath, '//*[@id="postcode"]').send_keys("00000")
  get_element(:xpath, '//*[@id="phone_mobile"]').send_keys(Faker::PhoneNumber.cell_phone)
  get_element(:xpath, '//*[@id="city"]').send_keys("Berlin")
  get_element(:xpath, '//*[@id="submitAccount"]').click
end

  Then (/^I can see my name in the acccount tab$/) do
 if @fullname ==  get_element(:xpath, "//*[@class='account']//*[text()='#{@fullname}']").text
 puts "Test successful"
 else raise "Test unsuccessful"
 end
 end
