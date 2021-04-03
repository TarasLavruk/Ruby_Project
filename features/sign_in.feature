Feature: Sign in
  As a visitor
  I want to be able to sign in
  In order to become a user

  Scenario: Sign in positive flow
    Given I am not logged in visitor

     When I click sign in button
     Then I see the log in form is opened

     When I fill in log in form with valid credentials
      And I click log in button
     Then I become a logged user

