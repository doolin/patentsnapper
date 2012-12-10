Feature: Inventor patent instance endpoint acceptance
  
  Scenario: Vist the invpat endpoint without query params
    Given an invpat
    When I visit the invpat endpoint with no query parameters
    Then I should receive an empty json response
  
  Scenario: Select an invpat by lastname
    Given an invpat
    When I query the invpat endpoint by lastname
    Then I receive a json response with invpat data
  
  Scenario: Select an invpat by lastname and city
    Given an invpat
    When I query the invpat endpoint by lastname and city
    Then I receive a json response with invpat data

  Scenario: Select an invpat by lastname and firstname  
    Given an invpat
    When I query the invpat endpoint by lastname and firstname
    Then I receive a json response with invpat data
