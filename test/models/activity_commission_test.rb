require 'test_helper'

class ActivityCommissionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Confirm cannot save an ActivityCommission without name or commission_id" do
     act1 = ActivityCommission.new
     assert_not act1.save, "Saving activity without a reference to activity type or name"
  end
  test "Confirm saving an ActivityCommission" do
    act2                     = ActivityCommission.new(:id => 5)
    act2.name                = "On a summery day"
    act2.commission_id       = 1
    act2.number_of_slots     = 20
    act2.min_slot_separation = 3
    act2.created_at          = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    act2.updated_at          = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    assert act2.save
  end
end
