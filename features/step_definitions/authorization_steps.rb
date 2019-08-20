# Given (/^I closed the ad$/) do
#   get_element(:xpath, '//*[@class="close-layer"]').displayed?
#   get_element(:xpath, '//*[@class="close-layer"]').click
# end
#
# When (/^I open registration page$/)do
#   get_element(:xpath, '//*[@id="user-benefits"]//a[text()="Join"]').click
# end
#
# def input_data
#   email = Faker::Internet.email
#   get_element(:id, "ws-xman-register-email").send_keys(email)
#   password = Faker::Games::Pokemon.name
#   get_element(:id, "ws-xman-register-password").send_keys(password)
# end
#
# And (/^I input my data and create account$/)do
#   input_data
#
#   error_visible = true
#   start = Time.now
#   while Time.now - start < 10
#     error_visible = check_if_visible(:xpath, '//*[@class="error-tip"][text()="error"]', timer: 2)
#     break unless error_visible
#     input_data
#   end
#   raise "Error still visible!" if error_visible
#
#   get_element(:id, "ws-xman-register-submit").click
# end
#
# Then (/^I am registered$/) do
#   get_element(:xpath, '//*[@id="batman-tabbed"]//*[@class="shop-now"]').click
#
#   greeting_element = get_element(:xpath, '//*[@id="nav-user-account"]')
#   greeting_text = greeting_element.text
#   unless greeting_text.include? "Hi, LV"
#     raise "Incorrect greeting text! Expected: 'Hi, LV', got: #{@greeting_text} !"
#   end
#     puts "#{greeting_text} match expected title"
# end
