class CreateActivityHolidays < ActiveRecord::Migration[5.0]
  def change
    create_table :activity_holidays, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :name, :limit => 64, :null => false

      t.timestamps
    end
    add_index :activity_holidays, :name
  end
end
