Feature: PatDescs endpoint acceptance
  
  Scenario: Vist the patent_descs endpoint without query params
    Given a patent_desc
    When I visit the patent_desc endpoint with no query parameters
    Then I should receive an empty json response
  
  Scenario: Select a patent_descs by patent
    Given a patent_desc
    When I query the patent_desc endpoint by patent
    Then I receive a json response with patent_desc data
  
  Scenario: Select a patent_descs by patent and title
    Given a patent_desc
    When I query the patent_desc endpoint by patent and title
    Then I receive a json response with patent_desc data