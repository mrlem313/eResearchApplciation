class CreateResearchElements < ActiveRecord::Migration
  def self.up
    create_table :research_elements do |t|
      t.string :name
      t.integer :number_involved
      t.string :group_name
      t.integer :grp_no_per_class
      t.string :classification
      t.timestamps
    end
  end

  def self.down
    drop_table :research_elements
  end
end
