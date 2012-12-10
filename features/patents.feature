Feature: Patents endpoint acceptance

  Scenario: search for patent MyString
    Given I have an patent record
    When I visit patent api endpoint for patent record
    Then I should the json representation of the patent
