class AddMidinitToResearchApplcation < ActiveRecord::Migration
  def change
    add_column :research_applications, :midinit, :string
  end
end
