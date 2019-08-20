Feature: automation practice authorization
@corgy
Scenario: Registering with a random user
  When I press “Sign in” button
  And I input my email
  And I press “Create an account” button
  And I enter all providences information
  And I press “Register” button
  Then appears text “My account”
