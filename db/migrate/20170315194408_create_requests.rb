class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :fullname
      t.string :contact_address, :null => false, :limit => 64
      t.integer :commission_type_id
      t.date :due_date, :null => false
      t.text :comments

      t.timestamps
    end
  end
end
