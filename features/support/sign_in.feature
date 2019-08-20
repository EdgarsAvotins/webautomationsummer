Feature: sign in

@test10
Scenario: Sign in http://automationpractice.com/index.php
When I click sign in
And I input my email address
And I click "Create an account" button
And I choose Mr. sex
And I input first name
And I input last name
And I input a password
And I select a date of birth
And I select a month of birth
And I select a year of birth
And I input a company
And I input address
And I input address in line 2
And I input city
And I choose a state
And I input postal code
And I input home phone
And I input mobile phone
And I input address in last text field
Then I click "Register" button
