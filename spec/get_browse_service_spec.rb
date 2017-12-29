require 'spec_helper'

describe Nasa_api do
  context 'For the get_browse service' do

    before(:all) do
      @browse = Nasa_api.new.browse_service
      @results = @browse.get_list_of_neo
    end

    it "I expect the results to be a hash" do
      expect(@results).to be_kind_of(Hash)
    end












  end
end
