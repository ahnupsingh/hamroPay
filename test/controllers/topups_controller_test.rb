require 'test_helper'

class TopupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topup = topups(:one)
  end

  test "should get index" do
    get topups_url
    assert_response :success
  end

  test "should get new" do
    get new_topup_url
    assert_response :success
  end

  test "should create topup" do
    assert_difference('Topup.count') do
      post topups_url, params: { topup: { amount: @topup.amount, mobile_number: @topup.mobile_number } }
    end

    assert_redirected_to topup_url(Topup.last)
  end

  test "should show topup" do
    get topup_url(@topup)
    assert_response :success
  end

  test "should get edit" do
    get edit_topup_url(@topup)
    assert_response :success
  end

  test "should update topup" do
    patch topup_url(@topup), params: { topup: { amount: @topup.amount, mobile_number: @topup.mobile_number } }
    assert_redirected_to topup_url(@topup)
  end

  test "should destroy topup" do
    assert_difference('Topup.count', -1) do
      delete topup_url(@topup)
    end

    assert_redirected_to topups_url
  end
end
