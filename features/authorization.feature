@autho
Feature: Registering new user account in http://automationpractice.com

Scenario:
When I click on sign in link
And I enter my email
And I input my personal info
And I input my address and cocntact info
And I press Register button
Then I have successfully created my account
And Users name and surname is in header

# @regin
# Feature: ebay user authorization
#
#
# Scenario: Registering with a random user
#   When I open registration form
#   And I input my details in registration form
#   And I press create account button
#   Then User is successfully registered
