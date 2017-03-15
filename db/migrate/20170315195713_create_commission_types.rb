class CreateCommissionTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :commission_types, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :name, :unique => true, :limit => 32
      t.integer :days_to_complete, :limit => 4, :default => 7, :null => false
      t.boolean :active, :default => 1, :null => false

      t.timestamps
    end
  end
end
