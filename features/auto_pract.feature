Feature: authorization

@auth

Scenario: Registering
  When I click on "Sign in"
  And I enter my email
  And I press "Create an account"
  And I fill in my information
  Then I can see my name in the acccount tab
