Given("I am on the resources homepage") do
  resource_index.visit_resource_index_page
  sleep 4
end

When("I click an individual post") do
  resource_edit.visit_mercury
  sleep 4
end

Then("information only for that particular post should be displayed on one page.") do
  expect(resource_show.find_mercury_title_show).to eq 'Mercury'

  sleep 4
end
