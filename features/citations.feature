Feature: Citation endpoint acceptance
  Users query database by patent to obtain patent's citations.

  Scenario: select citations by patent
    Given a specific patent
    When I query the citation endpoint by patent
    Then I receive json formatted citations for that patent
