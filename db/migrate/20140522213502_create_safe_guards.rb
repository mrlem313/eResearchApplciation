class CreateSafeGuards < ActiveRecord::Migration
  def self.up
    create_table :safe_guards do |t|
      t.text :description
      t.text :step
      t.timestamps
    end
  end

  def self.down
    drop_table :safe_guards
  end
end
