Feature: As a user , I want to be able to see information about an indivual post.

  Scenario: If I click on an individual post, I want to see information relating solely to that post.

  Given I am on the resources homepage
  When I click an individual post
  Then information only for that particular post should be displayed on one page.
