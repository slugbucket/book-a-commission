class Activity < ApplicationRecord
  validates :title, :presence => true, :uniqueness => true
  validates :activable_id, :presence => true
  validates :activable_type, :presence => true
  
  belongs_to :activable, :polymorphic => true
end
