Feature: aliexpress user authorization

@register
Scenario: Registering with a new user
  When I open registration form
  And I input my details in regestration form and create account
  Then I sign out

@search
Scenario: Search item
    When I open registration form
    And I input my details in regestration form and create account
    Then I input "Iphone" in the search field and find product
    And I choose first phone

@user
Scenario: Registering with a random user
  Given I close app
  When I choose to Join ad a new user
  And I put my email and password
  And I finish regestration
  Then a welcoming message appears
