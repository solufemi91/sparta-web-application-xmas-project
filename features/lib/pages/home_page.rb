require 'capybara'

class ProjectHomePage
  include Capybara::DSL

  START_DATE_FIELD = 'start_date_field' unless const_defined?(:START_DATE_FIELD)
  END_DATE_FIELD = 'end_date_field' unless const_defined?(:END_DATE_FIELD)
  FEED_SEARCH_BUTTON = 'feed_search_button'  unless const_defined?(:FEED_SEARCH_BUTTON)

  def visit_home_page
    visit('/')
  end

  def get_start_date_field
    find_field(:id, START_DATE_FIELD)
  end

  def fill_in_start_date_field(start_date)
    fill_in(START_DATE_FIELD, with: start_date)
  end

  def get_end_date_field
    find_field(:id, END_DATE_FIELD)
  end

  def fill_in_end_date_field(end_date)
    fill_in(END_DATE_FIELD, with: end_date)
  end

  def get_feed_search_button
    find(:id, FEED_SEARCH_BUTTON)
  end

  def click_feed_search_button
    get_feed_search_button.click
  end


end
