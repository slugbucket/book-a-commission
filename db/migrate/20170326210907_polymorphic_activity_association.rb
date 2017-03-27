class PolymorphicActivityAssociation < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :number_of_slots, :integer, :default => 1, :null => false
    add_column :activities, :min_slot_separation, :integer, :default => 1, :null => false
  end
end
