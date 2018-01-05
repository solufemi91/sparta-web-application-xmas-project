Feature: As a user , I want to be able to update solar system objects on the website

  Scenario: If I click on an individual post, there is an option avaliable to update the post on the website

  Given I have clicked a particular post
  When I click the edit button
  And I have filled in the neccessary fields
  And I have pressed the update post button
  Then the changes should be implemented,I should be redirected to the resource index page and the changes should be visible on this page
