require 'test_helper'

class ActivityDevelopmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_development = activity_developments(:one)
  end

  test "should get index" do
    get activity_developments_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_development_url
    assert_response :success
  end

  test "should create activity_development" do
    assert_difference('ActivityDevelopment.count') do
      post activity_developments_url, params: { activity_development: { name: "Development foo" } }
    end

    assert_redirected_to activity_development_url(ActivityDevelopment.last)
  end

  test "should show activity_development" do
    get activity_development_url(@activity_development)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_development_url(@activity_development)
    assert_response :success
  end

  test "should update activity_development" do
    patch activity_development_url(@activity_development), params: { activity_development: { name: @activity_development.name } }
    assert_redirected_to activity_development_url(@activity_development)
  end

  test "should destroy activity_development" do
    assert_difference('ActivityDevelopment.count', -1) do
      delete activity_development_url(@activity_development)
    end

    assert_redirected_to activity_developments_url
  end
end
