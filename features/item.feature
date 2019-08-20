Feature: search

@item
Scenario: Adding something to the cart
  Given I close the ad
  When I doing registration
  And I input "leather jacket" into the search field
  And I choose to sort by "Newest"
  And I open the first option
  And I choose the first color
  And I choose size "M"
  And I Add to Cart
  Then I do registration
