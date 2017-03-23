class Commission < ApplicationRecord
  has_one :request
  has_one :commission_type
  belongs_to :activity_commission

  validates :request_id, :presence => true
  validates :commission_type_id, :presence => true

   
  def title
    "#{Request.getname(self.request_id)}"
  end
  def self.request_name(comm)
    "#{Request.getname(comm.id)}"
  end
  def request
    Request.find(self.request_id)
  end
  def commission_type
    CommissionType.find(self.commission_type_id)
  end
  def self.commission_type_name(comm)
    "#{CommissionType.getname(comm.id)}"
  end
end
