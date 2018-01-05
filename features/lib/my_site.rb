require_relative '../lib/pages/home_page'
require_relative '../lib/pages/resource_index_page'
require_relative '../lib/pages/resource_new_page'
require_relative '../lib/pages/resource_show_page'
require_relative '../lib/pages/resource_edit_page'
require_relative '../lib/pages/feed_results_page'


module MySite

  def my_homepage
    ProjectHomePage.new
  end

  def resource_index
    ResourceIndexPage.new
  end

  def resource_new
    ResourceNewPage.new
  end

  def resource_show
    ResourceShowPage.new
  end

  def resource_edit
    ResourceEditPage.new
  end

  def feed_results
    FeedResultsPage.new
  end


end
