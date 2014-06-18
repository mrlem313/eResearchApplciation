class CreateResearchBenefitAndRisks < ActiveRecord::Migration
  def self.up
    create_table :research_benefit_and_risks do |t|
      t.text :benefit
      t.text :risk
      t.timestamps
    end
  end

  def self.down
    drop_table :research_benefit_and_risks
  end
end
