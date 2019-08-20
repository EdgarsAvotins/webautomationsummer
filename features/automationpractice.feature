@automation
Feature: automationpractice.com user authorization

Scenario: Registering with a new user
  When I open registration form
  And I input email and click on "Create an account"
  And I choose gender
  And I input random first name, last name and password
  And I choose random birthdate
  And I choose to take newsletter and special offers
  And I input random address and city
  And I choose random state and input random zipcode
  And I input random mobile phone and my address
  And I finished registration
  Then I check my name
  And I click on "Dresses"
  And I choose first dress "Printed dress" and add it to wish list
  And I go in my account and click on "MY WISHLISTS"
  And I check product date
  And I sign out
