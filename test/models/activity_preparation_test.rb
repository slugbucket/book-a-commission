require 'test_helper'

class ActivityPreparationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Confirm cannot save an ActivityPreparation without name or commission_id" do
     act1 = ActivityPreparation.new
     assert_not act1.save, "Saving activity without a reference to activity type or name"
  end
  test "Confirm saving an ActivityPreparation" do
    act2                     = ActivityPreparation.new
    act2.name                = "Now let me think about this"
    act2.created_at          = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    act2.updated_at          = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    assert act2.save
  end
end
