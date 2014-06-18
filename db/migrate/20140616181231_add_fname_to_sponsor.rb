class AddFnameToSponsor < ActiveRecord::Migration
  def change
    add_column :sponsors, :fname, :string
  end
end
