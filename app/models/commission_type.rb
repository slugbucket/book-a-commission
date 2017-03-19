class CommissionType < ApplicationRecord
  #belongs_to :request
  validates :name, :presence => true, :uniqueness => true
  validates :days_to_complete, :presence => true, numericality: { greater_than: 1 }
  validates :active, inclusion: {in: [true, false]}

  def name_how_long
    "#{name} - #{days_to_complete} days"
  end

  scope :active, lambda { where('active = 1') }
end
