class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :fullname, :limit => 96, :null => false
      t.text :details

      t.timestamps
    end
  end
end
