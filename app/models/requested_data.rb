class RequestedData < ActiveRecord::Base
  attr_accessible :data_requested, :data_src_location, :eta_of_requested_data
end
