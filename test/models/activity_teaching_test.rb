require 'test_helper'

class ActivityTeachingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Confirm cannot save an ActivityTeaching without name" do
     act1 = ActivityTeaching.new
     assert_not act1.save, "Saving activity without a reference to activity type or name"
  end
  test "Confirm saving an ActivityTeaching" do
    act2                     = ActivityTeaching.new
    act2.student_name        = "Teachy Pupil"
    act2.created_at          = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    act2.updated_at          = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    assert act2.save
  end
end
