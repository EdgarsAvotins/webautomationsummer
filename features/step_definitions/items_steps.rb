# When (/^I input "leather jacket" into the search field$/)do
#   get_element(:id, 'search-key').send_keys("leather jacket")
#   get_element(:xpath, '//*[@class="search-button"]').click
# end
#
# And (/^I choose to sort by "Newest"$/) do
#   get_element(:xpath, '//*[@class="refine-item"]//*[text()="Newest"]').click
# end
#
# And (/^I open the first option$/) do
#   get_element(:xpath, '//*[@class="list-items"]//*[@product-index="0"]').click
# end
#
# And (/^I choose the first color$/)do
#   get_element(:xpath, '//*[@class="sku-property-item selected"]').click
# end
#
# And (/^I choose size "M"$/)do
#   get_element(:xpath, '//*[@class="sku-property-item"]//*[text()="M"]').click
# end
#
# And (/^I Add to Cart$/)do
#   get_element(:xpath, '//*[@class="next-btn next-large next-btn-primary addcart"]').click
# end
#
# Then (/^I am asked to register$/)do
#   unless get_element(:id, "batman-dialog-wrap").displayed?
#     raise "Something went wrong!"
#   end
#   puts "Everything went fine!"
# end
