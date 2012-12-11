Feature: Patents endpoint acceptance
  
  Scenario: Vist the patents endpoint without query params
    Given a patent
    When I visit the patents endpoint with no query parameters
    Then I should receive an empty json response
  
  Scenario: Select a patents by patent
    Given a patent
    When I query the patents endpoint by patent
    Then I receive a json response with patent data
  
  Scenario: Select a patents by patent and kind
    Given a patent
    When I query the patents endpoint by patent and kind
    Then I receive a json response with patent data
