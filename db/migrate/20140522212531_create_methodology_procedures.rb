class CreateMethodologyProcedures < ActiveRecord::Migration
  def self.up
    create_table :methodology_procedures do |t|
      t.date :prj_start_date
      t.date :prj_end_date
      t.date :data_collect_start_date
      t.date :data_collect_end_date
      t.integer :no_of_comparison_grps
      t.string :rel_to_research_participants
      t.string :based_on_intervention
      t.timestamps
    end
  end

  def self.down
    drop_table :methodology_procedures
  end
end
