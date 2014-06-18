class ResearchApplication < ActiveRecord::Base

  has_many :researchers
  has_many :contexts 
  has_many :sponsors    
  has_many :goals     
  has_many :benefits
  has_many :methodology_procedures
  has_many :methodology_research_design_infos

  accepts_nested_attributes_for :researchers, 
								  :reject_if => :all_blank,
								  :allow_destroy => true

  accepts_nested_attributes_for :contexts, 
								  :reject_if => :all_blank,
								  :allow_destroy => true

  accepts_nested_attributes_for :sponsors, 
								  :reject_if => :all_blank,
								  :allow_destroy => true

  accepts_nested_attributes_for :goals, 
								  :reject_if => :all_blank,
								  :allow_destroy => true

  accepts_nested_attributes_for :benefits, 
								  :reject_if => :all_blank,
								  :allow_destroy => true

  accepts_nested_attributes_for :methodology_procedures, 
								  :reject_if => :all_blank,
								  :allow_destroy => true

  accepts_nested_attributes_for :methodology_research_design_infos, 
								  :reject_if => :all_blank,
								  :allow_destroy => true

end	  								  								  								  
