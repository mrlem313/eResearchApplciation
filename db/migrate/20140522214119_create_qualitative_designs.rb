class CreateQualitativeDesigns < ActiveRecord::Migration
  def self.up
    create_table :qualitative_designs do |t|
      t.text :theoretical_frmwrk
      t.text :coding_scheme
      t.text :data_validation_procedure
      t.timestamps
    end
  end

  def self.down
    drop_table :qualitative_designs
  end
end
