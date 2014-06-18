class CreateResearchData < ActiveRecord::Migration
  def self.up
    create_table :research_data do |t|
      t.text :data_collected_by_researcher
      t.text :collection_instrument
      t.date :eta_of_data
      t.timestamps
    end
  end

  def self.down
    drop_table :research_data
  end
end
