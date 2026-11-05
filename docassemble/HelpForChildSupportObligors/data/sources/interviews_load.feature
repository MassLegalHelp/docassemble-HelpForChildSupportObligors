@smoke
Feature: The child support interview loads

  Scenario: Start the child support interview
    Given I start the interview at "ChildSupportObligors_umbrella.yml"
    Then the question id should be "01 Welcome"
