require 'test_helper'

class RequestTest < ActiveSupport::TestCase
  test "Request should not save without fullname, commission_type, address or due_date" do
     rq1 = Request.new
     rq1.fullname = "Johnny Request"
     assert_not rq1.save, "Saving commission type using default active and days_to_come"
   end
   test "Contact address must be an email address" do
     rq2 = Request.new(:fullname => "J T Painter", :contact_address => "25, Down the road")
     rq2.due_date = (Date.today + 2.months).strftime("%Y-%m-%d %H:%M:%S")
     rq2.commission_type_id = 1
     #rq2.due_date = Date.today + 2.months
     rq2.comments = "Please paint for me a pretty picture"
     assert_not rq2.save, "Requestor contact details must be email address"
  end
  test "Confirm saving a request" do
    rq3 = Request.new(:fullname => "Sammy Suddenly")
    rq3.contact_address = "Sammy@suddenly.com"
    rq3.commission_type_id = 3
    rq3.due_date = (Date.today + 3.weeks).strftime("%Y-%m-%d %H:%M:%S")
    rq3.comments = "I need this one quite quickly"
    assert rq3.save
  end
end
