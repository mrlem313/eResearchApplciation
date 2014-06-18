class AddHphoneToSponsor < ActiveRecord::Migration
  def change
    add_column :sponsors, :hphone, :string
  end
end
