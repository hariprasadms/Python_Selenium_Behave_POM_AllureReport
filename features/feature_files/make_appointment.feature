Feature: User creates appointments in katalon-demo-cura application

  Scenario Outline: User make an appointment in katalon demo-cure application
    Given I am on the login page "https://katalon-demo-cura.herokuapp.com/profile.php"
    When I enter a valid username "<username>" and password "<password>"
    And I click the login button
    Then I should be redirected appointment page
    Then I click on make appointment button
    Then I select a facility "<facility>"
    Then I enter all details for appointment
    Then Click on book appointment
    Then Verify appointment is booked successfully

    Examples:
      | username    | password        | facility |
      | John Doe  | ThisIsNotAPassword| Tokyo CURA Healthcare Center |