# When(/^I open sign in form$/) do
#   if Element.get_element(:xpath, '//*[@class="ui-window-bd"]') != nil
#     Element.get_element(:xpath, '//*[@class="ui-window-bd"]//*[@class="close-layer"]').click
#   end
#   Element.get_element(:xpath, '//*[@class="register-btn"]/a[@data-role="sign-link"]').click
# end
#
# And(/^I input "(.+)" and "(.+)"$/) do |u_email, u_passwd|
#   # frame = Element.get_element(:xpath, '//iframe[@id="alibaba-login-box"]')
#   $driver.switch_to.frame(Element.get_element(:xpath, '//iframe[@id="alibaba-login-box"]'))
#   Element.get_element(:xpath, '//div[@id="login"]//input[@id="fm-login-id" and @aria-label="Email address or member ID"]').send_keys(u_email)
#   Element.get_element(:xpath, '//body[@id="mini-login-body"]//*[@class="login-password"]//input[@id="fm-login-password"]').send_keys(u_passwd)
#   Element.get_element(:xpath, '//body[@id="mini-login-body"]//*[@class="fm-btn"]').click
# end
#
# Then(/^I am successfully signed in$/) do
#   if Element.get_element(:xpath, '//*[@data-role="olduser"]') != nil
#     puts "Successfully authorized!"
#   end
# end
