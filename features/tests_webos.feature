Feature: automationpractice

@automation
Scenario: Registering with a random user
  When I choose to Join as a new user by clicking sign in button
  And I enter my email
  And I press create an account
  And I complete registration form
  And I press register button
  Then I get greeted by message "Welcome to your account. Here you can manage all of your personal information and orders."
