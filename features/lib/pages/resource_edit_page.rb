require 'capybara'

class ResourceEditPage
  include Capybara::DSL

  EDIT_TITLE_FIELD = "edit_title_field" unless const_defined?(:EDIT_TITLE_FIELD)
  EDIT_BODY_FIELD = "edit_body_field" unless const_defined?(:EDIT_BODY_FIELD)
  EDIT_IMAGE_FIELD = "edit_body_field" unless const_defined?(:EDIT_IMAGE_FIELD)
  EDIT_POST_SAVE_BUTTON = "edit_post_save_button" unless const_defined?(:EDIT_POST_SAVE_BUTTON)

  def visit_earth
    visit('/1')
  end

  def get_edit_title_field
    find_field(:id, EDIT_TITLE_FIELD)
  end

  def fill_in_edit_title_field(title)
    fill_in(EDIT_TITLE_FIELD, with: title)
  end

  def get_edit_post_save_button
    find(:id, EDIT_POST_SAVE_BUTTON)
  end

  def click_edit_post_save_button
    get_edit_post_save_button.click
  end

end
