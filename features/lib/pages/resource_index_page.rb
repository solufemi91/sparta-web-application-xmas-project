require 'capybara'

class ResourceIndexPage
  include Capybara::DSL

  RESOURCE_LINK = "resource_link"  unless const_defined?(:RESOURCE_LINK)
  SPACE_OBJECT_TITLES = 'space_object_titles' unless const_defined?(:SPACE_OBJECT_TITLES)

  def visit_home_page
    visit('/')
  end

  def visit_resource_index_page
    visit('/resource')
  end

  def find_link_to_resource_index
    find_link(RESOURCE_LINK)
  end

  def click_link_to_resource_index
    find_link_to_resource_index.click
  end

  def find_space_object_titles
    all('.space_object_titles')
  end





end
