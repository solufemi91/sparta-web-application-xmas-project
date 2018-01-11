Feature: As a user , I want to be able to see information add new solar system objects to the website

  Scenario: If I click on a link, it enables me the user to create a new posr

  Given I am on the homepage
  When I click a link to create a new post
  And I have completed all the neccesary fields
  Then A new post should be created and visible on the resources index page.
