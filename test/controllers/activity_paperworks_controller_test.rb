require 'test_helper'

class ActivityPaperworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_paperwork = activity_paperworks(:taxes)
  end

  test "should get index" do
    get activity_paperworks_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_paperwork_url
    assert_response :success
  end

  test "should create activity_paperwork" do
    assert_difference('ActivityPaperwork.count') do
      post activity_paperworks_url, params: { activity_paperwork: { id: 1, name: "Pay up!" } }
    end

    assert_redirected_to activity_paperwork_url(ActivityPaperwork.last)
  end

  test "should show activity_paperwork" do
    get activity_paperwork_url(@activity_paperwork)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_paperwork_url(@activity_paperwork)
    assert_response :success
  end

  test "should update activity_paperwork" do
    patch activity_paperwork_url(@activity_paperwork), params: { activity_paperwork: { name: @activity_paperwork.name } }
    assert_redirected_to activity_paperwork_url(@activity_paperwork)
  end

  test "should destroy activity_paperwork" do
    assert_difference('ActivityPaperwork.count', -1) do
      delete activity_paperwork_url(@activity_paperwork)
    end

    assert_redirected_to activity_paperworks_url
  end
end
