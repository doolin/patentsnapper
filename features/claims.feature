Feature: Claim endpoint acceptance
  Users query database by patent to obtain patent's claims.

  Scenario: select claims by patent
    Given a specific patent for which I want claims
    And an associated claim
    When I query the claim endpoint by patent
    Then I receive json formatted claims for that patent
