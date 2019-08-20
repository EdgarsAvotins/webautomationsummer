Feature: aliexpress

@signing
Scenario: Registering with a random user
  Given I close the ad
  When I choose to Join as a new user
  And I input my email and password
  And I finish registration
  Then a welcoming message appears


@adding_to_cart
Scenario: Adding something to the cart
  Given I close the ad
  When I input "leather jacket" into the search field
  And I choose to sort by "Newest"
  And I open the first option
  And I choose the first color
  And I choose size "M"
  And I Add to Cart
  Then something
