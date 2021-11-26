require 'test_helper'

class UserVegetablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_vegetable = user_vegetables(:one)
  end

  test "should get index" do
    get user_vegetables_url, as: :json
    assert_response :success
  end

  test "should create user_vegetable" do
    assert_difference('UserVegetable.count') do
      post user_vegetables_url, params: { user_vegetable: { user_id: @user_vegetable.user_id, vegetable_id: @user_vegetable.vegetable_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_vegetable" do
    get user_vegetable_url(@user_vegetable), as: :json
    assert_response :success
  end

  test "should update user_vegetable" do
    patch user_vegetable_url(@user_vegetable), params: { user_vegetable: { user_id: @user_vegetable.user_id, vegetable_id: @user_vegetable.vegetable_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_vegetable" do
    assert_difference('UserVegetable.count', -1) do
      delete user_vegetable_url(@user_vegetable), as: :json
    end

    assert_response 204
  end
end
