require 'capybara'

class ProjectHomePage
  include Capybara::DSL

  START_DATE_FIELD = 'start_date_field' unless const_defined?(:START_DATE_FIELD)
  END_DATE_FIELD = 'end_date_field' unless const_defined?(:END_DATE_FIELD)
  FEED_SEARCH_BUTTON = 'feed_search_button'  unless const_defined?(:FEED_SEARCH_BUTTON)
  ASTEROID_ID_FIELD = 'asteroid_id_field' unless const_defined?(:ASTEROID_ID_FIELD)
  FORM_SEARCH_BUTTON = 'form_search_button'

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

  def get_asteroid_id_field
    find_field(:id, ASTEROID_ID_FIELD)
  end

  def fill_in_asteroid_id_field(asteroid_id)
    fill_in(ASTEROID_ID_FIELD, with: asteroid_id)
  end

  def get_feed_search_button
    find(:id, FEED_SEARCH_BUTTON)
  end

  def click_feed_search_button
    get_feed_search_button.click
  end

  def get_lookup_search_button
    find(:id, FORM_SEARCH_BUTTON)
  end

  def click_lookup_search_button
    get_lookup_search_button.click
  end


end
