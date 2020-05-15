@api
Feature: I can see the comments for a post

  Scenario: Check comments from a post are fetched
    Given I call the api to get the access token
    Then I create get my booking data
    Then I delete my booking data