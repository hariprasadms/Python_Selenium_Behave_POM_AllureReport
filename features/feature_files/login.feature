Feature: User Login to katalon-demo-cura application

  Scenario Outline: Valid login to katalon-demo-cura application
    Given I am on the login page "https://katalon-demo-cura.herokuapp.com/profile.php"
    When I enter a valid username "<username>" and password "<password>"
    And I click the login button
    Then I should be redirected to the dashboard page

    Examples:
      | username    | password|
      | John Doe  | ThisIsNotAPassword|

  Scenario Outline: Invalid login to katalon-demo-cura application with invalid credentials
    Given I am on the login page "https://katalon-demo-cura.herokuapp.com/profile.php"
    When I enter a valid username "<username>" and password "<password>"
    And I click the login button
    Then Verify validation message displayed

    Examples:
      | username    | password|
      | John Doe  | WrongPassWord|