class CreateActivityDevelopments < ActiveRecord::Migration[5.0]
  def change
    create_table :activity_developments, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :name, :limit => 64, :null => false

      t.timestamps
    end
    add_index :activity_developments, :name
  end
end
