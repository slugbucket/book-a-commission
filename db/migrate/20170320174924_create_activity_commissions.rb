class CreateActivityCommissions < ActiveRecord::Migration[5.0]
  def change
    create_table :activity_commissions, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.integer :commission_id, :null => false
      t.string  :name, :limit => 64, :null => false
      t.integer :number_of_slots, :limit => 4, :default => 1, :null => false
      t.integer :min_slot_separation, :limit => 4, :default => nil

      t.timestamps
    end
    add_foreign_key :activity_commissions, :commissions
    add_index :activity_commissions, :name
  end
end
