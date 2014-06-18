class AddLnameToResearchApplcation < ActiveRecord::Migration
  def change
    add_column :research_applications, :lname, :string
  end
end
