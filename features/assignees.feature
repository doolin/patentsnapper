Feature: Assignee endpoint acceptance

  Scenario: Vist the assignees endpoint without query params
    Given an assignee
    When I visit the assignee endpoint with no query parameters
    Then I should receive an empty json response
  
  Scenario: Select an assignee by assignee
    Given an assignee
    When I query the assignee endpoint by assignee
    Then I receive a json response with assignee data
  
  Scenario: Select an assignee by patent and assignee
    Given an assignee
    When I query the assignee endpoint by patent and assignee
    Then I receive a json response with assignee data