Feature: Inventor endpoint acceptance
  Acceptance test for ensuring the that API has a
  minimum viable response.

  Scenario: Vist the inventors endpoint without query params
    Given an inventor
    When I visit the inventor endpoint with no query parameters
    Then I should receive an empty json response
  
  Scenario: Select an inventor by patent
    Given an inventor
    When I query the inventor endpoint by patent
    Then I receive a json response with inventor data
  
  Scenario: Select an inventor by firstname and lastname
    Given an inventor
    When I query the inventor endpoint by firstname and lastname
    Then I receive a json response with inventor data
  