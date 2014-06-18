class CreateResearchSamplings < ActiveRecord::Migration
  def self.up
    create_table :research_samplings do |t|
      t.text :how_participants_selected
      t.timestamps
    end
  end

  def self.down
    drop_table :research_samplings
  end
end
