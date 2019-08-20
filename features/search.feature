# @src
# Feature: search
#
# Scenario Outline: Adding something to the cart
#   Given I have been registered
#   Given I close the ad
#   When I input "<search_input>" into the search field
#   And I choose to sort by "Newest"
#   And I open the first option
#   And I choose the first color
#   And I choose size "M"
#   And I Add to Cart
#   Then something
#
# Examples:
# |     search_input       |
# |     leather jacket     |
