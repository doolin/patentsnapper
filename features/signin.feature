Feature: Member logs on

  A member needs to log on for various reasons, such as editing current
  projects, and adding new projects.

  Scenario: New member signs up from front page
    Given a site visitor who is not a member
    And presses the "Sign Up Free" button
    Then I should see "email can't be blank"

  Scenario: New member signs up from front page
    Given a site visitor who is not a member
    And fills in the Sign Up Free form
    And presses the "Sign Up Free" button
    #Then show me the page
    Then the new member should be on the new Profile page

  Scenario: New member signs up
    Given a site visitor who is not a member
    When the visitor is on the sign up page
    And fills in the Sign Up Free form
    And presses the "Sign Up Free" button
    #Then show me the page
    Then the new member should be on the new Profile page

  Scenario: Member signs in successfully with email
    Given member is not logged in
    And member name is "foo" with email "user@test.com" and password "please"
    When I go to the sign in page
    And I sign in as "user@test.com/please"
    And I should be signed in
    Then I should see "Projects"

  Scenario: Member changes email and password
    Given member is logged in
    When the member changes email and password
    Then show me the page
    Then the member should see "Projects"
    Then show me the page

  @wip
  Scenario: Member saves sesssion information as rememberable
    Given member is signed in
    Then member signs out
    When member returns next time
    Then member should be already signed in

  Scenario: Reader who is not a member cannot sign in
    Given member is not logged in
    And no user exists with an email of "user@test.com"
    When I go to the sign in page
    And I sign in as "user@test.com/please"
    Then I should see "Invalid email or password."
    And I go to the home page
    And I should be signed out

  @wip
  Scenario: Member enters wrong password
    Given member is not logged in
    And member name is "foo" with email "user@test.com" and password "please"
    When I go to the sign in page
    And I sign in as "user@test.com/wrongpassword"
    Then I should see "Invalid email or password."
    Then I should see "Sign up"
    And I go to the home page
    And I should be signed out
