Given (/^I close the ad$/) do
get_element(:xpath, '//*[text()="x"]').click
end
When (/^I doing registration$/) do
  step "I choose to Join ad a new user"
  step "I put my email and password"
  get_element(:id, 'ws-xman-register-submit').click
  step "a welcoming message appears"
  get_element(:xpath, '//*[@class="shop-now"]').click
end
And (/^I input "(.+)" into the search field$/) do |input_text|
  get_element(:id, 'search-key').send_keys(input_text)
  get_element(:xpath, '//*[@class="search-button"]').click
end
And (/^I choose to sort by "Newest"$/) do
get_element(:xpath, '//*[text()="REGISTER"]').click
step "I put my email and password"
get_element(:id, 'ws-xman-register-submit').click
get_element(:xpath, '//*[@class="shop-now"]').click
get_element(:xpath, '//*[text()="Newest"]').click
sleep(3)
end
And (/^I open the first option$/) do
get_element(:xpath, '//*/div[1]/li[1]/div/div[1]/div/a/img').click
end
And (/^I choose the first color$/) do
get_element(:xpath, '//*[@title="Beige"]').click
end
And (/^I choose size "M"$/) do
get_element(:xpath, '//*[text()="M"]').click
end
And (/^I Add to Cart$/) do
get_element(:xpath, '//div/*[@class="addcart-wrap"]').click
end
Then (/^I do registration$/) do
step "I put my email and password"
get_element(:id, 'ws-xman-register-submit').click
end
