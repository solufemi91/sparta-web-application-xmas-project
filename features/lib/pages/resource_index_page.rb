require 'capybara'

class ResourceIndexPage
  include Capybara::DSL

  RESOURCE_LINK = "resource_link"  unless const_defined?(:RESOURCE_LINK)
  SPACE_OBJECT_TITLES = 'space_object_titles' unless const_defined?(:SPACE_OBJECT_TITLES)
  NEW_POST_LINK = 'new_post_link' unless const_defined?(:NEW_POST_LINK)

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

  def get_array_of_space_object_titles
    website_titles_array = []
    find_space_object_titles.each do |spaceobject|
      website_titles_array.push(spaceobject.text)
    end
    website_titles_array
  end

  def find_first_space_object_title
    find_space_object_titles[0]
  end

  def click_first_space_object_title
    find_first_space_object_title.click
  end

  def find_link_to_new_post
    find_link(NEW_POST_LINK)
  end

  def click_link_to_new_post
    find_link_to_new_post.click
  end





end
