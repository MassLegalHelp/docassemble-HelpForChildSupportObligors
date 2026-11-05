@help_choices
Feature: Help choices follow the actions DOR took

  Scenario: Ask about DOR actions before building the help choices
    Given I start the interview at "ChildSupportObligors_umbrella.yml"
    And I get to the question id "01 what help do you need" with this data:
      | var | value |
      | intro_screen['i_accept'] | True |
      | client.name.first | Alex |
      | client.name.last | Example |
      | problems['account'] | True |
    Then I should see the phrase "I need to be able to use the money in my account."
    And I should not see the phrase "I need my license back"
