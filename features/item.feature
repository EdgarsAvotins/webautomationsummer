Feature:  automationpractice.com account creation and check if signed in

@userc
Scenario: account creation and signing in
  When You tap "sign in" button
  And fill "Email address" field
  And Press "create an account"
  And fill all personal information fields marked with "*"
  And press "Register" button
  Then Check if signed in
  And Subscribe to newsletters





















#Feature: search

#@item
#Scenario: Adding something to the cart
#  Given I close the add
#  When I input "leather jacket" into the search field
#  And I choose to sort by "Newest"
#  And I open the first option
#  And I choose the first color
#  And I choose size "M"
#  And I Add to Cart
#  Then something
