class ActivityPreparation < ApplicationRecord
  validates :name, :presence => true, :uniqueness => true

  has_many :activities, :as => :activable
end
