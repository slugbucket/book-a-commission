#class EmailValidator < ActiveModel::EachValidator
#  def validate_each(record, attribute, value)
#    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
#      record.errors[attribute] << (options[:message] || "is not an email")
#    end
#  end
#end
class Request < ApplicationRecord
  belongs_to :commission_type
  # This is needed but breaks requests and commissions
  has_one :commission, :dependent => destroy

  validates :title, :presence => true
  validates :fullname, :presence => true
  validates :due_date, :presence => true
  validate :verify_contact_address, :on => [:create, :update]
  validate :commission_type_id, :check_commission_type
  
  # Define a custom validator for the contact_address
  def verify_contact_address
    unless contact_address =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      errors.add(:contact_address,  "is not an email address")
    end
  end
  # Make sure a (valid) commission type has been selected
  def check_commission_type
    if ! commission_type_id then
      errors.add(:commission_type_id, "Missing commission type")
      return
    end
    errors.add(:commission_type_id, "Invalid commission type") if commission_type_id && ! CommissionType.find(commission_type_id)
  end
  # return the request title or none
  def self.getname(id)
    begin
      t = Request.find(id)
      "#{t.title}"
    rescue
      "none"
    end
  end
  def self.getduedate(id)
    begin
      t = Request.find(id)
      "#{t.due_date}"
    rescue
      "none"
    end
  end
  def commission_type_name
    begin
      CommissionType.find(self.commission_type_id).name
    rescue ActiveRecord::RecordNotFound => e
      "Missing"
    end
  end
  def self.commission_type_name(comm)
    "#{CommissionType.getname(comm.id)}"
  end
end
