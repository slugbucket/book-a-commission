class ActivityDevelopment < ApplicationRecord
  validates :name, :presence => true, :uniqueness => true

  has_many :activities, :as => :activityable
end
