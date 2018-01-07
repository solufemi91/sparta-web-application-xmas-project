
Given ("I am present on the home page") do
  my_homepage.visit_home_page

end

When("I enter the asteroid id into the form") do
  my_homepage.fill_in_asteroid_id_field('2021277')
  sleep 5
end

And("I press search") do
  my_homepage.click_lookup_search_button
  sleep 5
end

Then("I information should be displayed about that particuar asteroid") do
  expect(lookup_results.get_neo_reference_lookup_value).to eq '2021277'
  sleep 5
end
