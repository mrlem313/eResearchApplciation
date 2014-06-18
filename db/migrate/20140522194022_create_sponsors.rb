class CreateSponsors < ActiveRecord::Migration
  def self.up
    create_table :sponsors do |t|
      t.string :lname
      t.string :midinit
      t.string :lname
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :email_addr
      t.timestamps
    end
  end

  def self.down
    drop_table :sponsors
  end
end
