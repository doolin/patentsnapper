Feature: Citation endpoint acceptance
  Users query database by patent to obtain patent's citations.

  Scenario: Vist the citations endpoint without query params
    Given a citation
    When I visit the citation endpoint with no query parameters
    Then I should receive an empty json response
  
  Scenario: Select an citation by patent
    Given a citation
    When I query the citation endpoint by patent
    Then I receive a json response with citation data