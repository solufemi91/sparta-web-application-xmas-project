
Given("I have clicked a particular post") do
  resource_index.visit_resource_index_page

  resource_edit.visit_earth
end

When("I click the edit button") do
  resource_show.click_edit_link
  sleep 4
end

And("I have filled in the neccessary fields") do
  resource_edit.fill_in_edit_title_field('New Earth')
  sleep 4
end

And("I have pressed the update post button") do
  resource_edit.click_edit_post_save_button
  sleep 4
end

Then("the changes should be implemented,I should be redirected to the resource index page and the changes should be visible on this page") do
  expect(resource_index.get_array_of_space_object_titles.include? 'New Earth').to be true
  sleep 4
end
