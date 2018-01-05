require 'capybara'

class FeedResultsPage
  include Capybara::DSL

  DATE_TITLE_ASTEROID_FEED = 'date_title_asteroid_feed'

  def find_all_date_title_for_feed
    all('.date_title_asteroid_feed')
  end

  def get_array_of_date_titles
    date_titles_array = []
    find_all_date_title_for_feed.each do |date_title|
      date_titles_array.push(date_title.text)
    end
    date_titles_array
  end


end
