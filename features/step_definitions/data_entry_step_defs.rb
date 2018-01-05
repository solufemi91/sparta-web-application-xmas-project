Given ("I am on the my home page") do
  my_homepage.visit_home_page
end

When ("I search for dates") do
  my_homepage.fill_in_start_date_field('2017-12-01')
  my_homepage.fill_in_end_date_field('2017-12-02')
  my_homepage.click_feed_search_button
  sleep 2
end

Then ("I receive results in a table format") do
  pending
end
