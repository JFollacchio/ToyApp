require 'test_helper'

class MicroposttestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microposttest = microposttests(:one)
  end

  test "should get index" do
    get microposttests_url
    assert_response :success
  end

  test "should get new" do
    get new_microposttest_url
    assert_response :success
  end

  test "should create microposttest" do
    assert_difference('Microposttest.count') do
      post microposttests_url, params: { microposttest: { content: @microposttest.content, user_id: @microposttest.user_id } }
    end

    assert_redirected_to microposttest_url(Microposttest.last)
  end

  test "should show microposttest" do
    get microposttest_url(@microposttest)
    assert_response :success
  end

  test "should get edit" do
    get edit_microposttest_url(@microposttest)
    assert_response :success
  end

  test "should update microposttest" do
    patch microposttest_url(@microposttest), params: { microposttest: { content: @microposttest.content, user_id: @microposttest.user_id } }
    assert_redirected_to microposttest_url(@microposttest)
  end

  test "should destroy microposttest" do
    assert_difference('Microposttest.count', -1) do
      delete microposttest_url(@microposttest)
    end

    assert_redirected_to microposttests_url
  end
end
