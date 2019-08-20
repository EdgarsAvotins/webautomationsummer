# When(/^I open registration form$/) do
#   get_element(:xpath, '//*[@id="gh-ug-flex"]/*[text()="register"]').click
# end
#
#/html/body/div[5]/div/div/a
#//*[@class="close-layer"]

# And(/^I input my details in registration form and create account$/) do
#   @first_name = Faker::Games::Pokemon.name
#   get_element(:id, 'firstname').click.send_keys(@first_name)
#
#   @last_name = Faker::Games::Pokemon.name
#   get_element(:id, 'lastname').click.send_keys(@last_name)
#
#   email = Faker::Internet.email
#   get_element(:id, 'email').click.send_keys(email)
#
#   password = Faker::Internet.password
#   get_element(:id, 'PASSWORD').click.send_keys(password)
#
#   get_element(:id, 'ppaFormSbtBtn').click
# end
#
# Then(/^my name is greeted in the header$/) do
#   greeting_element = get_element(:id, 'gh-ug')
#   greeting_text = greeting_element.text
#   unless greeting_text.include? @first_name
#     raise "Incorrect greeting text! Expected: #{@first_name}, got: #{greeting_text}"
#   end
#   $driver.action.move_to(greeting_element).perform
# end
#
# And(/^my name and surname is visible in the header greeting dropdown$/) do
#   header_name_surname = get_element(:id, 'gh-un').text
#   unless header_name_surname.include? "#{@first_name} #{@last_name}"
#     raise "Incorrect name and surname! Expected: #{@first_name} #{@last_name}, got: #{header_name_surname}"
#   end
# end
#
# # .enabled?
