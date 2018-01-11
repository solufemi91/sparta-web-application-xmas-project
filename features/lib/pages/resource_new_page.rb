require 'capybara'

class ResourceNewPage
  include Capybara::DSL

  RESOURCE_LINK = "resource_link"  unless const_defined?(:RESOURCE_LINK)
  TITLE_FIELD = 'title_field' unless const_defined?(:TITLE_FIELD)
  BODY_FIELD = 'body_field' unless const_defined?(:BODY_FIELD)
  IMAGE_FIELD = 'image_field' unless const_defined?(:IMAGE_FIELD)
  NEW_POST_SAVE_BUTTON = 'new_post_save_button' unless const_defined?(:NEW_POST_SAVE_BUTTON)

  def visit_home_page
    visit('/')
  end

  def get_title_field
    find_field(:id, TITLE_FIELD)
  end

  def fill_in_title_field(title)
    fill_in(TITLE_FIELD, with: title)
  end

  def get_body_field
    find_field(:id, BODY_FIELD)
  end

  def fill_in_body_field(body)
    fill_in(BODY_FIELD, with: body)
  end

  def get_image_field
    find_field(:id, IMAGE_FIELD)
  end

  def fill_in_image_field(image)
    fill_in(IMAGE_FIELD, with: image)
  end

  def get_new_post_save_button
    find(:id, NEW_POST_SAVE_BUTTON)
  end

  def click_new_post_save_button
    get_new_post_save_button.click
  end










end
