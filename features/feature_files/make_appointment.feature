Feature: User creates appointments in katalon-demo-cura application

  Scenario Outline: User make an appointment in katalon demo-cure application
    Given I am on the login page "https://katalon-demo-cura.herokuapp.com/profile.php"
    When I enter a valid username "<username>" and password "<password>"
    And I click the login button
    Then I should be redirected appointment page
    And I click on make appointment button
    And I select a facility "<facility>"
    And I enter all details for appointment
    And I click on book appointment
    Then Verify appointment is booked successfully

    Examples:
      | username    | password        | facility |
      | John Doe  | ThisIsNotAPassword| Tokyo CURA Healthcare Center |
      | John Doe  | ThisIsNotAPassword| Hongkong CURA Healthcare Center |
      | John Doe  | ThisIsNotAPassword| Seoul CURA Healthcare Center |