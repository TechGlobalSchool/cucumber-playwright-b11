@TGLogin
Feature: TechGlobal Login Verification

  Scenario Outline: Validate login for <username> <password>
    Given I am on "https://www.techglobal-training.com/frontend/login"
    When I enter "<username>" on login page
    And I enter "<password>" on login page
    And I click "LOGIN" button
    Then I see "<error>" text

    Examples:
      | username   | password | error                     |
      | TechGlobal | 1234     | Invalid Password entered! |
      | Tech       | Test1234 | Invalid Username entered! |
      | Tech       | 1234     | Invalid Username entered! |
