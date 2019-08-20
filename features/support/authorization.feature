@authorization
Feature: automationpractice user authorization
@register
Scenario: registering with a new user
  When I choose to sign in as a new user
  And I input email and press create an account
  And I input personal data and press register button
  Then I see my MY ACCOUNT
