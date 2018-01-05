Feature: User Register
  as I user
  I want to be able to search for asteroids based on dates


  Scenario: If I input dates, I should get back results
    Given I am on the home page
    When I search for dates
    Then I receive results for the correct dates
