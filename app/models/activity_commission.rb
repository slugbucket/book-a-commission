class ActivityCommission < ApplicationRecord
  validates :name, :presence => true
  validates :commission_id, :presence => true
  validates :number_of_slots, :presence => true, :numericality => true

  has_many :activities, :as => :activityable, :dependent => :destroy
end
