Feature: User autorization
@autorization
Scenario: user log in to ebay.com/aliexpress.com
  When I enter to site and click on log in
  And I log in to account

@alisearch
Scenario: Adding something to the cart
  Given I close the ad
  When I input "leather jacket" into the search field
  And I choose to sort by "Newest"
  And I open the first option
  And I choose the first color
  And I choose size "M"
  And I Add to Cart
  #Then something

@automation
Scenario: Autorization on http://automationpractice.com
  When I enter "Sign in"
  And I fill email and click on "Create account"
  And I start to fill personal data and choose gender
  And I input first and last name
  And I input email and password
  And I choose birth date
#  And I start input my data in address section
  And I input company data
  And I input address
  And I input additional info
  And I input phone number and alias
  And I click on "Register" button
  Then I check account name
