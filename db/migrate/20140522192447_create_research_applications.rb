class CreateResearchApplications < ActiveRecord::Migration
  def self.up
    create_table :research_applications do |t|
      t.string :title
      t.string :owner
      t.timestamps
    end
  end

  def self.down
    drop_table :research_applications
  end
end
