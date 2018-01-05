Feature: As a user , I want to be able to delete solar system objects on the website

  Scenario: If I click on an individual post, there is an option avaliable to remove the post from the website

  Given I am on the homepage
  And I have clicked the link to the resource index
  And I have already clicked a particular post
  When I click a particular button
  Then the post should be removed and I should be redirected to the resource index page
