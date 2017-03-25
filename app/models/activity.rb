class Activity < ApplicationRecord
  validates :title, :presence => true, :uniqueness => true
  validates :activityable_id, :presence => true
  validates :activityable_type, :presence => true
  
  belongs_to :activityable, :polymorphic => true
end
