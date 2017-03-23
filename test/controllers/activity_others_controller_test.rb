require 'test_helper'

class ActivityOthersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_other = activity_others(:lazing)
  end

  test "should get index" do
    get activity_others_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_other_url
    assert_response :success
  end

  test "should create activity_other" do
    assert_difference('ActivityOther.count') do
      post activity_others_url, params: { activity_other: { id: 1, name: "Need a break" } }
    end

    assert_redirected_to activity_other_url(ActivityOther.last)
  end

  test "should show activity_other" do
    get activity_other_url(@activity_other)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_other_url(@activity_other)
    assert_response :success
  end

  test "should update activity_other" do
    patch activity_other_url(@activity_other), params: { activity_other: { name: @activity_other.name } }
    assert_redirected_to activity_other_url(@activity_other)
  end

  test "should destroy activity_other" do
    assert_difference('ActivityOther.count', -1) do
      delete activity_other_url(@activity_other)
    end

    assert_redirected_to activity_others_url
  end
end
