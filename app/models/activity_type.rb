class ActivityType < ApplicationRecord
  #belongs_to :activity

  validates :name, :presence => true, :uniqueness => true
  validates :color, :presence => true, :uniqueness => true
end
