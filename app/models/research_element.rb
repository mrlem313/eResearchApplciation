class ResearchElement < ActiveRecord::Base
  attr_accessible :name, :number_involved, :group_name, :grp_no_per_class, :classification
end
