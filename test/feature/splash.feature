Feature: Splash

  Scenario: An ErrorDialog is presented in case of failure
    Given I'm not logged in
    And the app is running
    Then I see an error dialog
