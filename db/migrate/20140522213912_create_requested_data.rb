class CreateRequestedData < ActiveRecord::Migration
  def self.up
    create_table :requested_data do |t|
      t.text :data_requested
      t.string :data_src_location
      t.date :eta_of_requested_data
      t.timestamps
    end
  end

  def self.down
    drop_table :requested_data
  end
end
