require 'test_helper'

class ActivityCommissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_commission = activity_commissions(:one)
  end

  test "should get index" do
    get activity_commissions_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_commission_url
    assert_response :success
  end

  test "should create activity_commission" do
    assert_difference('ActivityCommission.count') do
      #post activity_commissions_url, params: { activity_commission: { commission_id: @activity_commission.commission_id, name: @activity_commission.name, min_slot_separation: @activity_commission.min_slot_separation, number_of_slots: @activity_commission.number_of_slots } }
      post activity_commissions_url, params: { activity_commission: { id: 1, commission_id: @activity_commission.commission_id, name: "Lots of wibbling going on", min_slot_separation: 3, number_of_slots: 12 } }
    end

    assert_redirected_to activity_commission_url(ActivityCommission.last)
  end

  test "should show activity_commission" do
    get activity_commission_url(@activity_commission)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_commission_url(@activity_commission)
    assert_response :success
  end

  test "should update activity_commission" do
    patch activity_commission_url(@activity_commission), params: { activity_commission: { commission_id: @activity_commission.commission_id, name: @activity_commission.name, min_slot_separation: @activity_commission.min_slot_separation, number_of_slots: @activity_commission.number_of_slots } }
    assert_redirected_to activity_commission_url(@activity_commission)
  end

  test "should destroy activity_commission" do
    assert_difference('ActivityCommission.count', -1) do
      delete activity_commission_url(@activity_commission)
    end

    assert_redirected_to activity_commissions_url
  end
end
