class CreateCommissions < ActiveRecord::Migration[5.0]
  def change
    create_table :commissions, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.integer :request_id, :null => false
      t.integer :commission_type_id, :null => false

      t.timestamps
    end
    add_foreign_key :commissions, :requests
    add_foreign_key :commissions, :commission_types
  end
end
