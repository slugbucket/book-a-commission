require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #test "Activity should not save without title or link to an activity type" do
  #   act1        = Activity.new
  #   #act1.title = "Johnny Activity"
  #   assert_not act1.save, "Saving activity without a reference to activity type or title"
  #end
  test "Must specify a valid Activity type for the polymorphic assication" do
    act1                = Activity.new
    act1.title          = "On a winter's day"
    act1.details        = "Setting the scene for failure"
    act1.activable_id   = 3
    act1.activable_type = "ActivityFoobar"
    act1.created_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    act1.updated_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    assert_raise NameError do
       act1.save
    end
  end
  test "Confirm saving a development activity" do
    act2                = Activity.new
    act2.title          = "On a winter's day"
    act2.details        = "Paint a wintry scene"
    act2.activable_id   = 3
    act2.activable_type = "ActivityDevelopment"
    act2.created_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    act2.updated_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    assert act2.save
  end
  test "Confirm saving a commission activity" do
    act3                = Activity.new
    act3.title          = "On a winter's day"
    act3.details        = "Paint a wintry scene"
    act3.activable_id   = 2
    act3.activable_type = "ActivityCommission"
    act3.created_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    act3.updated_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    assert act3.save, act3.errors.full_messages.join(" ")
  end
  test "Confirm saving a holiday activity" do
    act4                = Activity.new
    act4.title          = "Off to the land of sun"
    act4.details        = "We're all going on a summer holiday"
    act4.activable_id   = 2
    act4.activable_type = "ActivityHoliday"
    act4.created_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    act4.updated_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    assert act4.save
  end
  test "Confirm saving a other activity" do
    act5                = Activity.new
    act5.title          = "Off to the land of nod"
    act5.details        = "Takin' it easy"
    act5.activable_id   = 2
    act5.activable_type = "ActivityOther"
    act5.created_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    act5.updated_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    assert act5.save
  end
  test "Confirm saving a paperwork activity" do
    act6                = Activity.new
    act6.title          = "Off to the land of taxes"
    act6.details        = "There's only one thing certain in life"
    act6.activable_id   = 1
    act6.activable_type = "ActivityPaperwork"
    act6.created_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    act6.updated_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    assert act6.save
  end
  test "Confirm saving a preparation activity" do
    act7                = Activity.new
    act7.title          = "Are you ready?"
    act7.details        = "Ready, steady, ..."
    act7.activable_id   = 1
    act7.activable_type = "ActivityPreparation"
    act7.created_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    act7.updated_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    assert act7.save
  end
  test "Confirm saving a teaching activity" do
    act1                = Activity.new
    act1.title          = "Are you ready?"
    act1.details        = "Education, education, education"
    act1.activable_id   = 1
    act1.activable_type = "ActivityTeaching"
    act1.created_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    act1.updated_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    assert act1.save
  end
  test "Confirm saving a writing activity" do
    act9                = Activity.new
    act9.title          = "Now read this"
    act9.details        = "Scribble, scribble"
    act9.activable_id   = 1
    act9.activable_type = "ActivityWriting"
    act9.created_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    act9.updated_at     = (Date.today).strftime("%Y-%m-%d %H:%M:%S")
    assert act9.save
  end

end
