Given (/^I am registred$/) do
step 'I choose to sign in as a new user'
step 'I input email and press create an account'
step 'I input personal data and press register button'
end

And (/^I click on the Search field$/) do
  get_element(:id,'search_query_top').click
end
And (/^I input in Search Dress and press serch button$/) do
  get_element(:id,'search_query_top').send_keys("Dress")
  get_element(:xpath,'//*[@id="searchbox"]/button').click
end
Then (/^I sort by Price: Lowest first$/) do
  get_element(:id,'selectProductSort').click
  get_element(:xpath,'//*[@id="selectProductSort"]/option[2]').click
sleep(5)
end
Then (/^I choose first position$/) do
  get_element(:xpath,'//img[@alt="Faded Short Sleeve T-shirts"]').click

end
And (/^I choose size M and color Blue$/) do
  get_element(:id,'group_1').click
  get_element(:xpath,'//option[@title="M"]').click
  get_element(:id,'color_14').click
end
And (/^I add in shopping cart$/) do
  get_element(:id,'add_to_cart').click
end
And (/^I see window where was text Product successfully added to your shopping cart$/) do
  if get_element(:xpath,'//span[@class="ajax_cart_product_txt "]').text.include? "There is 1 item in your cart."
    p "the product was successfully placed in the shopping cart"
  else
    p "Shopping cart is empty"
end
end
