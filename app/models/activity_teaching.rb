class ActivityTeaching < ApplicationRecord
  validates :student_name, :presence => true

  has_many :activities, :as => :activityable
end
