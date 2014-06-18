class CreateMethodologyResearchDesignInfos < ActiveRecord::Migration
  def self.up
    create_table :methodology_research_design_infos do |t|
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :methodology_research_design_infos
  end
end
