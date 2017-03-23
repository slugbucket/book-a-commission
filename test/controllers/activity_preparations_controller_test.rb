require 'test_helper'

class ActivityPreparationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_preparation = activity_preparations(:gettinready)
  end

  test "should get index" do
    get activity_preparations_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_preparation_url
    assert_response :success
  end

  test "should create activity_preparation" do
    assert_difference('ActivityPreparation.count') do
      post activity_preparations_url, params: { activity_preparation: { id: 1, name: "Stretch, 2, 3" } }
    end

    assert_redirected_to activity_preparation_url(ActivityPreparation.last)
  end

  test "should show activity_preparation" do
    get activity_preparation_url(@activity_preparation)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_preparation_url(@activity_preparation)
    assert_response :success
  end

  test "should update activity_preparation" do
    patch activity_preparation_url(@activity_preparation), params: { activity_preparation: { name: @activity_preparation.name } }
    assert_redirected_to activity_preparation_url(@activity_preparation)
  end

  test "should destroy activity_preparation" do
    assert_difference('ActivityPreparation.count', -1) do
      delete activity_preparation_url(@activity_preparation)
    end

    assert_redirected_to activity_preparations_url
  end
end
