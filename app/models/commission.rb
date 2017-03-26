class Commission < ApplicationRecord
  # According to http://guides.rubyonrails.org/association_basics.html#choosing-between-belongs-to-and-has-oneVhttp://guides.rubyonrails.org/association_basics.html#choosing-between-belongs-to-and-has-one
  # the belongs_to goes with the table with the foreign key
  belongs_to :request
  belongs_to :commission_type

  validates :request_id, :presence => true
  validates :commission_type_id, :presence => true

   
  def title
    "#{Request.getname(self.request_id)}"
  end
  def self.request_name(comm)
    "#{Request.getname(comm.id)}"
  end
  def self.commission_type_name(comm)
    "#{CommissionType.getname(comm.commissio_type_id)}"
  end
  def self.request_due_date(comm)
    "#{Request.getduedate(comm.request_id)}"
  end
end
