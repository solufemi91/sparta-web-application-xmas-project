Feature: Search for information about asteroids
  as I user
  I want to be able to search for asteroids based on their ids.


  Scenario: If I input the asteroid id, I should get back results about that particular asteroid.
    Given I am present on the home page
    When I enter the asteroid id into the form
    And I press search
    Then I information should be displayed about that particuar asteroid
