require 'test_helper'

class ActivityHolidayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Confirm cannot save an ActivityHoliday without name or commission_id" do
     act1 = ActivityHoliday.new
     assert_not act1.save, "Saving activity without a reference to activity type or name"
  end
  test "Confirm saving an ActivityHoliday" do
    act2                     = ActivityHoliday.new
    act2.name                = "Set your out of office"
    act2.created_at          = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    act2.updated_at          = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    assert act2.save
  end
end
