class CommissionType < ApplicationRecord
  belongs_to :request
  validates :name, :presence => true
  validates :days_to_complete, numericality: { greater_than: 1 }

  def name_how_long
    "#{name} - #{days_to_complete} days"
  end
end
