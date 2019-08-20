Feature: automationpractice user authorization

Scenario: Registering with a random user
  When I choose to Join as a new user
  And I input my email
  And I enter my personal information
  And I enter my adress information
  And I finish registration
  Then a welcoming message appears
