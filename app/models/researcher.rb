class Researcher < ActiveRecord::Base
	belongs_to :research_application
	
	has_many :co_researchers

	accepts_nested_attributes_for :co_researchers, allow_destroy: true
end
