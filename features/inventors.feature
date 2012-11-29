Feature: Inventor endpoint acceptance
  Acceptance test for ensuring the that API has a
  minimum viable response.

  Scenario: Select an inventor by lastname
    Given an inventor with a lastname
    When I query the inventor endpoint by last name
    Then I receive a json response with inventor data
