Feature:
  As a user I want to create an account on adultswim.com

  Background:
    Given I am on adultswim.com
    And I click the login button
    And I click the Not Registered Start Here button



  Scenario: Attempt to create an adultswim account with an invalid user name
    When I enter my information with an invalid user name
    And I check the terms of service box
    And I click submit
    Then I should see "Invalid username"

  Scenario: Attempt to create an adultswim account with an invalid email address
    When I enter my information with an invalid email address
    And I check the terms of service box
    And I click submit
    Then I should see "E-mail address is invalid"

  Scenario: Attempt to create an adultswim account with unmatching password re-enter
    When I enter my information with unmatching password re-enter
    And I check the terms of service box
    And I click submit
    Then I should see "Passwords do not match"

  Scenario: Create a new account on adultswim.com
    When I enter my information
    And I check the terms of service box
    And I click submit
    Then I should see "Verify Your Email Address"