Feature: creating an account

@create_account
Scenario: Adding something to the cart
  When I sign in
  And I create an account
  And I input all necessary information
  And I click CREATE ACCOUNT button
  Then I have successfully created my account
