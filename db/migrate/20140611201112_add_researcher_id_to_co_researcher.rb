class AddResearcherIdToCoResearcher < ActiveRecord::Migration
  def change
    add_column :co_researchers, :researcher_id, :integer
  end
end
