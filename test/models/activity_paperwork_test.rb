require 'test_helper'

class ActivityPaperworkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Confirm cannot save an ActivityPaperwork without name or commission_id" do
     act1 = ActivityCommission.new
     assert_not act1.save, "Saving activity without a reference to activity type or name"
  end
  test "Confirm saving an ActivityPaperwork" do
    act2                     = ActivityPaperwork.new
    act2.name                = "Filin', filin', filin'"
    act2.created_at          = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    act2.updated_at          = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    assert act2.save
  end
end
