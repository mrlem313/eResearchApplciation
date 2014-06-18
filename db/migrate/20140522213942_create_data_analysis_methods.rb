class CreateDataAnalysisMethods < ActiveRecord::Migration
  def self.up
    create_table :data_analysis_methods do |t|
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :data_analysis_methods
  end
end
