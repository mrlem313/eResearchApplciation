class ResearchData < ActiveRecord::Base
  attr_accessible :data_collected_by_researcher, :collection_instrument, :eta_of_data
end
