class CreateGoals < ActiveRecord::Migration
  def self.up
    create_table :goals do |t|
      t.text :study_significance
      t.text :rationale
      t.text :citation
      t.text :problem_statement
      t.timestamps
    end
  end

  def self.down
    drop_table :goals
  end
end
