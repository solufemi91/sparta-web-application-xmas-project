Given ("I am on the home page") do
  my_homepage.visit_home_page
  sleep 2
end

When ("I search for dates") do
  my_homepage.fill_in_start_date_field('2017-12-01')
  sleep 2
  my_homepage.fill_in_end_date_field('2017-12-07')
  sleep 2
  my_homepage.click_feed_search_button
  sleep 2

end

Then ("I receive results for the correct dates") do
  expect(feed_results.get_array_of_date_titles.sort).to eq ["2017-12-01", "2017-12-02", "2017-12-03", "2017-12-04", "2017-12-05", "2017-12-06", "2017-12-07"]
  sleep 4
end
