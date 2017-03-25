class CommissionType < ApplicationRecord
  has_many :requests, :dependent => :destroy
  has_many :commissions, :dependent => :destroy
  validates :name, :presence => true, :uniqueness => true
  validates :days_to_complete, :presence => true, numericality: { greater_than: 1 }
  validates :active, inclusion: {in: [true, false]}

  def self.getname(id)
    begin
       n = CommissionType.find(id).name
    rescue ActiveRecord::RecordNotFound => e
      n = "None"
    end
    "#{n}"
  end
  def name_how_long
    "#{name} - #{days_to_complete} days"
  end

  scope :active, lambda { where('active = 1') }
end
