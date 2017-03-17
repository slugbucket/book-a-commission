#class EmailValidator < ActiveModel::EachValidator
#  def validate_each(record, attribute, value)
#    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
#      record.errors[attribute] << (options[:message] || "is not an email")
#    end
#  end
#end
class Request < ApplicationRecord
  has_one :commission_type
  validates :commission_type_id, :presence => true
  validates_associated :commission_type
  validates :fullname, :presence => true
  validates :due_date, :presence => true
  validate :verify_contact_address, :on => :create
  
  # Define a custom validator for the contact_address
  def verify_contact_address
    unless contact_address =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      errors.add(:contact_address,  "is not an email address")
    end
  end
  # Make sure a valid commission type has been selected
  def check_commission_type
  end
end
