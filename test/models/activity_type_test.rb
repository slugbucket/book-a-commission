require 'test_helper'

class ActivityTypeTest < ActiveSupport::TestCase
   test "Activity type should not save without a name" do
     activity_type = ActivityType.new
     assert_not activity_type.save, "Saving activity type without a name"
   end
   test "Activity type should not save without a colour" do
     activity_type      = ActivityType.new
     activity_type.name = "No colour activity"
     assert_not activity_type.save, "Saving activity type without a color"
   end
   test "Activity type can save without a description" do
     activity_type       = ActivityType.new
     activity_type.name  = "Color activity type"
     activity_type.color = "Bisque"
     assert activity_type.save, "Saving activity type without a description"
   end
end
