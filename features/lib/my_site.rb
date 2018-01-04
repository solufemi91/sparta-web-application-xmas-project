require_relative '../lib/pages/home_page'
require_relative '../lib/pages/resource_index_page'


module MySite

  def my_homepage
    ProjectHomePage.new
  end

  def resource_index
    ResourceIndexPage.new
  end


end
