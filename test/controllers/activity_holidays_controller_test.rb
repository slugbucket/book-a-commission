require 'test_helper'

class ActivityHolidaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_holiday = activity_holidays(:staycation)
  end

  test "should get index" do
    get activity_holidays_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_holiday_url
    assert_response :success
  end

  test "should create activity_holiday" do
    assert_difference('ActivityHoliday.count') do
      post activity_holidays_url, params: { activity_holiday: { id: 1, name: " holiday in Foobaria" } }
    end

    assert_redirected_to activity_holiday_url(ActivityHoliday.last)
  end

  test "should show activity_holiday" do
    get activity_holiday_url(@activity_holiday)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_holiday_url(@activity_holiday)
    assert_response :success
  end

  test "should update activity_holiday" do
    patch activity_holiday_url(@activity_holiday), params: { activity_holiday: { name: @activity_holiday.name } }
    assert_redirected_to activity_holiday_url(@activity_holiday)
  end

  test "should destroy activity_holiday" do
    assert_difference('ActivityHoliday.count', -1) do
      delete activity_holiday_url(@activity_holiday)
    end

    assert_redirected_to activity_holidays_url
  end
end
