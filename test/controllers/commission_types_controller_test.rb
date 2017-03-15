require 'test_helper'

class CommissionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commission_type = commission_types(:one)
  end

  test "should get index" do
    get commission_types_url
    assert_response :success
  end

  test "should get new" do
    get new_commission_type_url
    assert_response :success
  end

  test "should create commission_type" do
    assert_difference('CommissionType.count') do
      post commission_types_url, params: { commission_type: { active: @commission_type.active, days_to_complete: @commission_type.days_to_complete, name: @commission_type.name } }
    end

    assert_redirected_to commission_type_url(CommissionType.last)
  end

  test "should show commission_type" do
    get commission_type_url(@commission_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_commission_type_url(@commission_type)
    assert_response :success
  end

  test "should update commission_type" do
    patch commission_type_url(@commission_type), params: { commission_type: { active: @commission_type.active, days_to_complete: @commission_type.days_to_complete, name: @commission_type.name } }
    assert_redirected_to commission_type_url(@commission_type)
  end

  test "should destroy commission_type" do
    assert_difference('CommissionType.count', -1) do
      delete commission_type_url(@commission_type)
    end

    assert_redirected_to commission_types_url
  end
end
