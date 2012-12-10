Feature: Inventor patent instance endpoint acceptance

  Scenario: Select an invpat by lastname
    Given an invpat with a lastname
    When I query the invpat endpoint by last name
    Then I receive a json response with invpat data
