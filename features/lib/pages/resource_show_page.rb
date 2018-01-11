require 'capybara'

class ResourceShowPage
  include Capybara::DSL

  DELETE_BUTTON = "delete_button" unless const_defined?(:DELETE_BUTTON)
  EDIT_LINK = 'edit_link' unless const_defined?(:EDIT_LINK)
  MERCURY_TITLE_SHOW = 'Mercury_title_show' unless const_defined?(:MERCURY_TITLE_SHOW)

  def get_delete_post_button
    find(:id, DELETE_BUTTON)
  end

  def click_delete_post_button
    get_delete_post_button.click
  end

  def get_edit_link
    find_link(EDIT_LINK)
  end

  def click_edit_link
    get_edit_link.click
  end

  def find_mercury_title_show
    find(:id, MERCURY_TITLE_SHOW).text
  end




end
