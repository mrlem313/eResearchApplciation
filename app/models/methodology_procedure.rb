class MethodologyProcedure < ActiveRecord::Base
  attr_accessible :prj_start_date, :prj_end_date, :data_collect_start_date, :data_collect_end_date, :no_of_comparison_grps, :rel_to_research_participants, :based_on_intervention
end
