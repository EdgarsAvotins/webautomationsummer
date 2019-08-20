# Feature: item search
#
# @aliexpress1
# Scenario: Adding something to the cart
#   Given I closed the ad
#   When I input "leather jacket" into the search field
#   And I choose to sort by "Newest"
#   And I open the first option
#   And I choose the first color
#   And I choose size "M"
#   And I Add to Cart
#   Then I am asked to register
