class AddTitleToRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :title, :string, :limit => 64, :null => false
  end
end
