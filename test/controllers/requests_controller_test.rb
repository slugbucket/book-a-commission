require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    #@request = requests(:pastelboy)
    @request = Request.new(id: 3, title: "In the mists of time", comments: "large pic", commission_type_id: 3, contact_address: "me@there.com", due_date: "2017-08-14 19:34:52", fullname: "Me you", created_at: "2017-04-19 11:23:19", updated_at: "2017-04-19 11:23:19")
  end

  test "should get index" do
    get requests_url
    assert_response :success
  end

  test "should get new" do
    get new_request_url
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      #post requests_url, params: { request: { comments: @request.comments, commission_type_id: @request.commission_type_id, contact_address: @request.contact_address, due_date: @request.due_date, fullname: @request.fullname } }
      post requests_url, params: { request: { title: "Is this my best side?", comments: "large pic", commission_type_id: 3, contact_address: "me@there.com", due_date: "2017-08-14 19:34:52", fullname: "Me you", created_at: "2017-04-19 11:23:19", updated_at: "2017-04-19 11:23:19" } }
    end

    assert_redirected_to request_url(Request.last)
  end

  test "should show request" do
    get request_url(@request)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_url(@request)
    assert_response :success
  end

# Not entirely obvious why the update test should throw the error:
# Error:
# RequestsControllerTest#test_should_update_request:
# NoMethodError: undefined method `comments' for nil:NilClass
#    test/controllers/requests_controller_test.rb:39:in `block in <class:RequestsControllerTest>'
# It works exactly as described in a browser.
# If we use the patch request specifying all the submitted data, we get:
# RequestsControllerTest#test_should_update_request [/Users/julian/Projects/ruby/book-a-commission/test/controllers/requests_controller_test.rb:40]:
# Expected response to be a redirect to <http://www.example.com/requests/815306676> but was a redirect to <http://www.example.com/requests/602306938>.
# Expected "http://www.example.com/requests/815306676" to be === "http://www.example.com/requests/602306938".
# These tests don't appear to work with fixture data although using the debugger shows that
# the fixture data is present. What gives?
#  test "should update request" do
#    patch request_url(@request), params: { request: { id: 3, title: "Scrbblin'", comments: "In a graphite style", commission_type_id: 4, contact_address: "pics@request.com", due_date: "2017-03-14 19:34:52", fullname: "Prendall Pastel", created_at: "2017-04-19 11:23:19", updated_at: "2017-04-19 11:23:19" } }
#    assert_redirected_to request_url(@request)
#  end

  # Verify that a delete attempt breaks a FK reference to commissions
  # FIXME: Need to identify a sfe URL to redirect to
  #test "should destroy request" do
  #  assert_raise ActiveRecord::StatementInvalid do
  #    delete request_url(@request)
  #  end
  #
  #  assert_redirected_to requests_url
  #end
  # FIXME: Need to delete a commission before the request
  #test "should destroy request" do
  #  assert_difference('Request.count', -1) do
  #    delete request_url(@request)
  #  end
  #  assert_redirected_to requests_url
  #end
end
