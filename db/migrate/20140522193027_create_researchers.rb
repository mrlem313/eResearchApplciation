class CreateResearchers < ActiveRecord::Migration
  def self.up
    create_table :researchers do |t|
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
      t.string :job_title
      t.string :employer
      t.string :emp_addr
      t.string :emp_city
      t.string :emp_state
      t.string :emp_zip
      t.string :prof_institution
      t.string :mjr_prof
      t.string :prof_addr
      t.string :prof_phone
      t.string :prof_email_addr      
      t.timestamps
    end
  end

  def self.down
    drop_table :researchers
  end
end
