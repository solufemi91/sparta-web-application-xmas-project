require 'capybara'

class LookupResultsPage
  include Capybara::DSL
  NEO_REFERENCE_ID_LOOKUP_VALUE = 'neo_reference_id_lookup_value' unless const_defined?(:NEO_REFERENCE_ID_LOOKUP_VALUE)

  def get_neo_reference_lookup_value
    find(:id, NEO_REFERENCE_ID_LOOKUP_VALUE).text
  end



end
