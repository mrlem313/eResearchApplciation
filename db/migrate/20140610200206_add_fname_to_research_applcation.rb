class AddFnameToResearchApplcation < ActiveRecord::Migration
  def change
    add_column :research_applications, :fname, :string
  end
end
