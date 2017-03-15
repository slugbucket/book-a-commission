class CreateActivityTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :activity_types, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :name, :null => false, :unique => true
      t.text :description
      t.string :color, :null => false, :unique => true

      t.timestamps
    end
  end
end
