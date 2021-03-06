require 'test_helper'

class ActivityWritingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Confirm cannot save an ActivityWriting without name or commission_id" do
     act1 = ActivityWriting.new
     assert_not act1.save, "Saving activity without a reference to activity type or name"
  end
  test "Confirm saving an ActivityWriting" do
    act2                     = ActivityWriting.new
    act2.name                = "Scribbling away"
    act2.created_at          = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    act2.updated_at          = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    assert act2.save
  end
end
