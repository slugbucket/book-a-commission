require 'test_helper'

class CommissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commission = commissions(:one)
  end

  test "should get index" do
    get commissions_url
    assert_response :success
  end

  test "should get new" do
    get new_commission_url
    assert_response :success
  end

  test "should create commission" do
    assert_difference('Commission.count') do
      #post commissions_url, params: { commission: { id: @commission.id, commission_type_id: @commission.commission_type_id, request_id: @commission.request_id } }
      post commissions_url, params: { commission: { id: 1, commission_type_id: 1, request_id: 1 } }
    end

    assert_redirected_to commission_url(Commission.last)
  end

  test "should show commission" do
    get commission_url(@commission)
    assert_response :success
  end

  test "should get edit" do
    get edit_commission_url(@commission)
    assert_response :success
  end

  test "should update commission" do
    patch commission_url(@commission), params: { commission: { id: @commission.id, commission_type_id: @commission.commission_type_id, request_id: @commission.request_id } }
    assert_redirected_to commission_url(@commission)
  end

  # Test will fail if there is a foreign key reference from ActivityCommission
  test "should not destroy commission when ActivityCommission is linked" do
    delete commission_url(@commission)
    assert_response 302
    #end

    #assert_redirected_to commissions_url
  end
  # Test removing the foreign key reference from ActivityCommission
  # before removing the commission
  #test "should destroy ActivityCommission before commission" do
  #  delete commission_url(@commission)
  #  assert_response 500
  #  end

  #  assert_redirected_to commissions_url
  #end
end
