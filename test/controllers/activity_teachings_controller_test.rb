require 'test_helper'

class ActivityTeachingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_teaching = activity_teachings(:norman)
  end

  test "should get index" do
    get activity_teachings_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_teaching_url
    assert_response :success
  end

  test "should create activity_teaching" do
    assert_difference('ActivityTeaching.count') do
      post activity_teachings_url, params: { activity_teaching: { id: 1, student_name: "Norbert" } }
    end

    assert_redirected_to activity_teaching_url(ActivityTeaching.last)
  end

  test "should show activity_teaching" do
    get activity_teaching_url(@activity_teaching)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_teaching_url(@activity_teaching)
    assert_response :success
  end

  test "should update activity_teaching" do
    patch activity_teaching_url(@activity_teaching), params: { activity_teaching: { student_name: @activity_teaching.student_name } }
    assert_redirected_to activity_teaching_url(@activity_teaching)
  end

  test "should destroy activity_teaching" do
    assert_difference('ActivityTeaching.count', -1) do
      delete activity_teaching_url(@activity_teaching)
    end

    assert_redirected_to activity_teachings_url
  end
end
