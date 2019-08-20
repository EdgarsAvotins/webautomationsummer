Feature: automationpractice user registration

@test1
Scenario: Registrating a new user
  When I open the sign in form
  And I input my email in "Create an account" field
  And I input my personal data
  And I input my adress information
  Then I validate that I am registered
