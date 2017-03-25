require 'test_helper'

class CommissionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commission_type = commission_types(:unconnected)
    #@commission_type = CommissionType.new(id: 5, active: true, days_to_complete: 7, name: "Oil", created_at: "2017-03-16 14:11:09", updated_at: "2017-03-16 14:11:09")
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
      post commission_types_url, params: { commission_type: { active: true, days_to_complete: 10, name: "Type 1", created_at: "2017-03-31 14:29:09", updated_at: "2017-03-31 14:29:09" } }
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
    patch commission_type_url(@commission_type), params: { commission_type: { active: @commission_type.active, days_to_complete: @commission_type.days_to_complete, name: @commission_type.name, created_at: @commission_type.created_at, updated_at: @commission_type.updated_at } }
    assert_redirected_to commission_type_url(@commission_type)
  end
  # Must destroy a commission before the commission_type
  # But a commssion depends on a Request. Much removings.
  # Can assert that commission_type is destroyed but cannot do the same
  # for Commission and Request. Would be good to confirm these cases.
  test "Destroying commission_type also destroy commission and request" do
    assert_difference('CommissionType.count', -1) do
      delete commission_type_url(@commission_type)
    end

    assert_redirected_to commission_types_url
  end
  #  assert_difference('CommissionType.count', -1) do
  #    delete commission_type_url(@commission_type)
  #  end

  #  assert_redirected_to commission_types_url
  #end

  # Test will fail if there is a foreign key reference from Commission
  test "should not destroy commission_type when Commission is linked" do
    @connected_ct = commission_types(:deleteme)
    delete commission_type_url(@connected_ct)
    assert_response 500

  end
end
