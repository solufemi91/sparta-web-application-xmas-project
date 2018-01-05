Given ("I am on the my home page") do
  my_homepage.visit_home_page

end

And("I have clicked the link to the resource index")do
  resource_index.click_link_to_resource_index
  sleep 4
end

And("I have already clicked a particular post") do
  resource_index.click_first_space_object_title
  sleep 4
end

When("I click a particular button") do
  resource_show.click_delete_post_button
  sleep 4
end

Then("the post should be removed and I should be redirected to the resource index page") do
  expect(resource_index.get_array_of_space_object_titles.include? 'Pluto').to be false
  sleep 4
end
