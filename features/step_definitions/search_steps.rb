# # Element.get_element(:xpath, '//input[@id="search-key"]').send_keys(src_input
# # )
# # Element.get_element(:xpath, '//input[@class="search-button" and @type="submit"]').click
# #
# #
# # Element.get_element(:xpath, '//*[@class="sort-by-wrapper"]//*[text()="Newest"]').click
# #
# #
# # Element.get_element(:xpath, '//*[@class="list-items"]//*[@product-index="0"]').click
# #
# #
# # # atveras jauns tabs
# # item_url = Element.get_element(:xpath, '//*[@class="list-items"]//*[@product-index="0"]//a[@class="item-title"]').attributes('href')
# #
# # list = Element.get_list(:xpath, '//*[@class="sku-wrap"]//*[@class="sku-property"]')
# Given(/^I have been registered$/) do
#   step 'I open registration form'
#   step 'I input my details in registration form'
#   step 'I press create account button'
#   # step 'User is successfully registered'
# end
#
# Given(/^I close the ad$/) do
#   if Element.get_element(:xpath, '//a[@class="shop-now"]') !=nil
#     Element.get_element(:xpath, '//a[@class="shop-now"]').click
#   end
# end
#
# When(/^I input "(.+)" into the search field$/) do |src_input|
#   Element.get_element(:xpath, '//input[@id="search-key"]').send_keys(src_input)
#   Element.get_element(:xpath, '//input[@class="search-button" and @type="submit"]').click
#
# end
#
# And(/^I choose to sort by "Newest"$/) do
#   Element.get_element(:xpath, '//*[@class="sort-by-wrapper"]//*[text()="Newest"]').click
# end
#
# And(/^I open the first option$/) do
#   # Element.get_element(:xpath, '//*[@product-index="0"]//*[@class="product-img"]//a[@target="_blank"]').click
#   item = Element.get_element(:xpath, '//*[@product-index="0"]//a[@class="item-title"]')
#   @item_url = item.attribute("href")
#   puts "Go to page: #{@item_url}"
#   $driver.get(@item_url)
# end
#
# And(/^I choose the first color$/) do
#   list = Element.get_list(:xpath, '//*[@class="sku-property"]')
#   list.each do |option|
#     Element.get_list(:xpath, '//*[@class="sku-property-item"]').click
#   end
# end
#
# And(/^I choose size "M"$/) do
#
# end
#
# And(/^I Add to Cart$/) do
#
# end
#
# Then(/^something$/) do
#
# end
