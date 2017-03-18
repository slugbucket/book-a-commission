require 'test_helper'

class CommissionTypeTest < ActiveSupport::TestCase
  test "Commission type should not save without a name" do
     ct1 = CommissionType.new
     assert_not ct1.save, "Saving commission type without a name"
  end
  test "Commission type should save without active or days_to_complete" do
     ct2 = CommissionType.new
     ct2.name = "CommissionType2"
     assert ct2.save, "Saving commission type using default active and days_to_come"
  end
  test "Commission type should save with active = false" do
     ct3 = CommissionType.new
     ct3.name = "CommissionType3"
     ct3.active = false
     ct3.days_to_complete = 2
     assert ct3.save, "Saving inactive commission type"
  end
  test "Commission type name must be unique" do
     ct5 = CommissionType.new
     ct5.name = "Oil"
     ct5.days_to_complete = "8"
     assert_not ct5.save, "Creating commission type with the same name as existing record"
  end
  test "Commission type days_to_complete must be positive integer" do
     ct6 = CommissionType.new
     ct6.name = "CommType6"
     ct6.days_to_complete = "-1"
     assert_not ct6.save, "Creating commission type with negative days_to_complete"
  end
end
