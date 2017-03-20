class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :title, :default => "Activity", :limit => 64, :null => false
      t.text :details
      t.integer :activable_id, :null => false
      t.string :activable_type, :null => false, :default => "ActivityDevelopment", :limit => 32

      t.timestamps
    end
  end
end
