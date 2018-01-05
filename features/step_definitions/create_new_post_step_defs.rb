Given ("I am on the my home page") do
  my_homepage.visit_home_page

end

When("I click a link to create a new post") do
  resource_index.click_link_to_new_post

end

And("I have completed all the neccesary fields") do
  resource_new.fill_in_title_field('Pluto')
  sleep 4
  resource_new.fill_in_body_field('For testing purposes')
  sleep 4
  resource_new.fill_in_image_field('http://www.alphadictionary.com/images/pluto.gif')
  sleep 4
  resource_new.click_new_post_save_button
  sleep 4
end

Then("A new post should be created and visible on the resources index page.") do
   expect(resource_index.get_array_of_space_object_titles.include? 'Pluto').to be true
end
