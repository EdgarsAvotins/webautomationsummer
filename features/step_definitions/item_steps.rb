When (/^You tap "sign in" button$/) do
# //*[@class="login"]
get_element(:xpath, '//*[@class="login"]').click

end

And (/^fill "Email address" field$/) do
# id email_create
@name = Faker::Name.first_name
@surname = Faker::Name.last_name
@email = "#{@name}_#{@surname}@holy-email.com"
get_element(:id, 'email_create').click
get_element(:id, 'email_create').send_keys(@email)
end

And (/^Press "create an account"$/) do

#id SubmitCreate
get_element(:id, 'SubmitCreate').click

end

And (/^fill all personal information fields marked with "\*"$/) do
  #gender id="id_gender2"
  get_element(:id, 'id_gender2').click
  #first name id="customer_firstname"
  get_element(:id, 'customer_firstname').send_keys(@name)
  #last name id="customer_lastname"
  get_element(:id, 'customer_lastname').send_keys(@surname)
  #email - autom
  #password id="passwd"
  get_element(:id, 'passwd').send_keys("P@ssw0rd")

  #day: id="days" value="1" month: id="months" year: id="years"

  get_element(:id, 'days').click
  #d = rand(1...28)
  get_element(:xpath, '//*[@id="days"]/option[5]').click

  get_element(:id, 'months').click
  #m = rand(1...12)
  get_element(:xpath, '//*[@id="months"]/option[2]').click

  get_element(:id, 'years').click
  #y = rand(20...121)
  get_element(:xpath, '//*[@id="years"]/option[43]').click
  #first name id="firstname"
  #get_element(:id, 'firstname').send_keys(@name)
  #last name id="lastname"
  #get_element(:id, 'lastname').send_keys(@surname)

  adress = "#{Faker::Address.full_address}"

  #adress id="address1"
  get_element(:id, 'address1').send_keys(adress)

  #city id="city"

  get_element(:id, 'city').send_keys("Mordor")
  #state id="id_state" value=
  get_element(:id, 'id_state').click
  #state = rand(1...50)
  get_element(:xpath, '//*[@id="id_state"]/option[4]').click
  #zip id="postcode"
  get_element(:id, 'postcode').send_keys("00000")
  #phone id="phone_mobile"
  phone_number = "#{Faker::PhoneNumber.cell_phone}"
  get_element(:id, 'phone_mobile').send_keys(phone_number)
  #ref adress id="alias"
  #max 32 symbols
  get_element(:id, 'alias').clear
  get_element(:id, 'alias').send_keys("bullshit street 99")

end

And (/^press "Register" button$/) do

  #register button id="submitAccount"

  get_element(:id, 'submitAccount').click

end

Then (/^Check if signed in$/) do

  if get_element(:class, 'account').text == "#{@name} #{@surname}"
    p "u are signed in"
  else
    p "error!"
  end
end

And (/^Subscribe to newsletters$/) do
  #id="newsletter-input"
  get_element(:id, 'newsletter-input').send_keys(@email)
  #name="submitNewsletter"
  get_element(:name, 'submitNewsletter').click
  #class="alert alert-success" nezinu kapec, bet nevar atrast elementu pec xpath un klases.
  #//*[@id="columns"]/p
  if get_element(:xpath, '//*[@id="columns"]/p').text == "/(.Newsletter : You have successfully subscribed to this newsletter.)/"
    p "subscribed successfully!"
  else
    p "error!"
  end
end
























# Given (/^I close the add$/) do
#
#     get_element(:xpath, '/html/body/div[5]/div/div/a').click
#
# end
#
# When (/^I input "leather jacket" into the search field$/) do
#
#   get_element(:xpath, '//*[@class="search-key"]').send_keys("leather jacket")
#   get_element(:xpath, '//*[@class="search-button"]').click
#
#
#
# end
#
# And (/^I choose to sort by "Newest"$/) do
#
#   get_element(:xpath, '//*[@ae_object_value="date_added"]').click
#
# end
#
# And (/^I open the first option$/) do
#
#   get_elememnt(:xpath, '//*[@product-index="0"]').click
#
#
# end
#
# And (/^I choose the first color$/) do
#
#   get_element(:xpath, '//*[@title="Beige"]').click
#
# end
#
# And (/^I choose size "M"$/) do
#
#   get_element(:xpath, '//*[@id="root"]/div/div[2]/div/div[2]/div[6]/div/div[2]/ul/li[2]/div/[@text="M"]').click
#
# end
#
# And (/^I Add to Cart$/) do
#
#
# get_element(:xpath, '//*[@id="root"]/div/div[2]/div/div[2]/div[10]/span[2]/button').click
# end
#
# Then (/^something$/) do
#
#   p "something"
#
# end
