class CreateCoResearchers < ActiveRecord::Migration
  def self.up
    create_table :co_researchers do |t|
      t.string :fname
      t.string :midinit
      t.string :lname
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :hphone
      t.string :mphone
      t.string :email_addr
      t.timestamps
    end
  end

  def self.down
    drop_table :co_researchers
  end
end
