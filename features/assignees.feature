Feature: Assignee endpoint acceptance

  Scenario: search for assigne MyString
    Given I have an assignee record
    When I visit assignees api endpoint for assignee record
    Then I should the json representation of the assignee
