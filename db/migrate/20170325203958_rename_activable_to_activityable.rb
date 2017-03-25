class RenameActivableToActivityable < ActiveRecord::Migration[5.0]
  def change
    rename_column :activities, :activable_id, :activityable_id
    rename_column :activities, :activable_type, :activityable_type
  end
end
