#ebay authorization
 # When ('I enter to site and click on log in')do
 #   $driver.get("https://www.ebay.com/")
 #   get_element(:id, 'gh-ug').click
 # end
 # And ('I log in to account')do
 #   get_element(:id, 'userid').send_keys("test01@account.lv")
 #   get_element(:id, 'pass').send_keys("!23456Aa")
 #   get_element(:id, 'sgnBt').click
 #   acctext = get_element(:id, 'gh-ug').text
 #   p acctext
 #   unless p acctext.include? "Test"
 #     rise "Wrong account #{acctext}"
 #   end
 #   sleep(5)
 #   p Faker::Games::Pokemon.name + " I choose you!"
 # end

#aliexpress authorization
When ('I enter to site and click on log in')do
  $driver.get("https://aliexpress.com")
# check_if_visible(:xpath, '//a[@data-role="layer-close"]')
  get_element(:xpath, '//a[@data-role="layer-close"]').click
  get_element(:xpath, '//span/*[@data-role="sign-link"]').click
end
And ('I log in to account')do
  $driver.switch_to.frame("alibaba-login-box")
  get_element(:id, 'fm-login-id').send_keys("test02@account.lv")
  get_element(:id, 'fm-login-password').send_keys("123456Aa")
  get_element(:xpath, '//*[text()="Sign In"]').click
  # check_if_visible(:xpath, '//a[@data-role="layer-close"]')
  get_element(:xpath, '//a[@data-role="layer-close"]').click
  acctext = get_element(:xpath, '//*[@data-role="username"]').text
  p acctext
  unless acctext.include? "LV"
    rise "Wrong account #{acctext}"
  end
  p Faker::Games::Pokemon.name + ", I choose you!"
end

#search on ali
Given ('I close the ad')do
  step 'I enter to site and click on log in'
  step 'I log in to account'
end
When ('I input "leather jacket" into the search field')do
  get_element(:id, 'search-key').send_keys("leather jacket")
  get_element(:xpath,'//*[@class="search-button"]').click
end
And ('I choose to sort by "Newest"')do
  get_element(:xpath, '//*/div[2]/div[2]/div[1]/span/span[3]').click
#  sleep(1)    # Thank you Alibaba
end
And ('I open the first option')do
#  get_element(:xpath, '//*/div[1]/li[1]/div/div[1]').click    # not works correctly
  path = get_element(:xpath, '//*/div[2]/ul/div[1]/li[1]/div/div[1]/div/a').attribute('href')
  $driver.get(path)    # Thank you Alibaba
end
And ('I choose the first color')do
  get_element(:xpath, '//*/div[2]/div[6]/div/div[1]/ul/li[1]/div/img').click
end
And ('I choose size "M"')do
  get_element(:xpath, '//*/div[6]/div/div[2]/ul/li[2]/div').click
end
And ('I Add to Cart')do
  get_element(:xpath, '//*/div[10]/span[2]/button').click
end
#Then something #(validation not ready yet)
# Woooooooorks on aliexpress!!!

#automationpractice
email = "test05@account.lv"  # Don't forget to change email
name = Faker::Games::Pokemon.name
lname = "Test"
pass = "!23456Aa"
addr = "Nowere street 6, New York"

When ('I enter "Sign in"')do
  get_element(:xpath, '//*/a[@class="login"]').click
end
And ('I fill email and click on "Create account"')do
  get_element(:id, 'email_create').send_keys(email)
  get_element(:id, 'SubmitCreate').click
end
And ('I start to fill personal data and choose gender')do
  get_element(:id, 'id_gender1').click
end
And ('I input first and last name')do
  get_element(:id, 'customer_firstname').send_keys(name)
  get_element(:id, 'customer_lastname').send_keys(lname)
end
And ('I input email and password')do
  get_element(:id, 'email').clear    # need to clean field first
  get_element(:id, 'email').send_keys(email)
  get_element(:id, 'passwd').send_keys(pass)
end
And ('I choose birth date')do    #if it works why not?
  get_element(:xpath, '//*[@id="days"]/option[10]').click
  get_element(:xpath, '//*[@id="months"]/option[6]').click
  get_element(:xpath, '//*[@id="years"]/option[29]').click
  get_element(:xpath, '//*[@name="newsletter"]').click
end
And ('I start input my data in address section')do    # useless step
  get_element(:id, 'firstname').send_keys(name)
  get_element(:id, 'lastname').send_keys(lname)
end
And ('I input company data')do
  get_element(:id, 'company').send_keys("Testing Co")
end
And ('I input address')do
  get_element(:id, 'address1').send_keys(addr)
  get_element(:id, 'address2').send_keys("Second floor")
  get_element(:id, 'city').send_keys("New York")
  get_element(:xpath, '//*[@id="id_state"]/option[34]').click
  get_element(:id, 'postcode').send_keys("00000")
  get_element(:xpath, '//*[@id="id_country"]/option[2]').click
end
And ('I input additional info')do
  get_element(:id, 'other').send_keys("None")
end
And ('I input phone number and alias')do
  get_element(:id, 'phone_mobile').send_keys("12555255")
  get_element(:id, 'alias').clear     # need to clean field first
  get_element(:id, 'alias').send_keys(addr)
#  sleep(10) # correctivity check
end
And ('I click on "Register" button')do
  get_element(:id, 'submitAccount').send_keys("Testing Co")
end
Then ('I check account name')do
  get_element(:xpath, '//*[@title="Information"]').click
  accname = get_element(:id, 'firstname').attribute('value')
  if accname == name
    p "Registration sucesful"
  else
    p "Registration can be failed, name mismatch"
  end
end
