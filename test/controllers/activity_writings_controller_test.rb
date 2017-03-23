require 'test_helper'

class ActivityWritingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_writing = activity_writings(:one)
  end

  test "should get index" do
    get activity_writings_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_writing_url
    assert_response :success
  end

  test "should create activity_writing" do
    assert_difference('ActivityWriting.count') do
      post activity_writings_url, params: { activity_writing: { id: 1, name: "Scootle" } }
    end

    assert_redirected_to activity_writing_url(ActivityWriting.last)
  end

  test "should show activity_writing" do
    get activity_writing_url(@activity_writing)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_writing_url(@activity_writing)
    assert_response :success
  end

  test "should update activity_writing" do
    patch activity_writing_url(@activity_writing), params: { activity_writing: { name: @activity_writing.name } }
    assert_redirected_to activity_writing_url(@activity_writing)
  end

  test "should destroy activity_writing" do
    assert_difference('ActivityWriting.count', -1) do
      delete activity_writing_url(@activity_writing)
    end

    assert_redirected_to activity_writings_url
  end
end
