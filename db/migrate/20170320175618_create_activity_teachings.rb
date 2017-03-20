class CreateActivityTeachings < ActiveRecord::Migration[5.0]
  def change
    create_table :activity_teachings, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :student_name

      t.timestamps
    end
  end
end
