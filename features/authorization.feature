Feature: aliexpresss user authorization

Scenario: Registering with a random user
  Given I close the ad
  When I choose to Join as a new user
  And I input my email and password
  And I finish registration
  Then a welcoming message appears


# @test
# Scenario: test
#   When one step
