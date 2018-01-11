Feature: As a user , I want to be able to see information about other objects that exist in the solar system all at once.

  Scenario: If I click on a link, it displays all the solar system objects that the website has on one page

  Given I am on the homepage
  When I click a link
  Then All the posts for the resource should be displayed on one page.
