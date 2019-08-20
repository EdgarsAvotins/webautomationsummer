#
# When (/^I input "leather jacket" into the search field$/)do
# get_element(:id, 'search-key').send_keys("leather jacket")
# get_element(:xpath, '//*[@id="form-searchbar"]//*[@class="search-button"]').click
#
# end
#
# And (/^I choose to sort by "Newest"$/)do
#   get_element(:xpath, '//*[@id="root"]//*[text()="Newest"]').click
# end
#
# And (/^I open the first option$/)do
# get_element(:xpath, '//*[@id="root"]/div/div/div[2]/div[2]/div/div[2]/ul/div[1]/li[1]/div/div[1]/div/a/img').click
# end
#
# And (/^I choose the first color$/)do
# get_element(:xpath, '//*[@class="sku-property-image"]//*[@title="Beige"]').click
# end
#
# And (/^I choose size "M"$/)do
# get_element(:xpath, '//*[@class="sku-property-text"]/*[text()="M"]').click
# end
#
# And (/^I Add to Cart$/)do
# get_element(:xpath, '//*[@class="next-btn next-large next-btn-primary addcart"]').click
# end
#
# Then (/^I see create an account button$/)do
#   welcoming_message = get_element(:xpath, '//*[@class="submit"]').text
#   expected_message = "create account"
#   unless welcoming_message.include? expected_message
#     raise "Incorrect welcomming message! Expected: #{expected_message}, actual: #{welcoming_message}"
#   end
# end
