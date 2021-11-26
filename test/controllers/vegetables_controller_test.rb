require 'test_helper'

class VegetablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vegetable = vegetables(:one)
  end

  test "should get index" do
    get vegetables_url, as: :json
    assert_response :success
  end

  test "should create vegetable" do
    assert_difference('Vegetable.count') do
      post vegetables_url, params: { vegetable: { good_at: @vegetable.good_at, hp: @vegetable.hp, name: @vegetable.name, power: @vegetable.power } }, as: :json
    end

    assert_response 201
  end

  test "should show vegetable" do
    get vegetable_url(@vegetable), as: :json
    assert_response :success
  end

  test "should update vegetable" do
    patch vegetable_url(@vegetable), params: { vegetable: { good_at: @vegetable.good_at, hp: @vegetable.hp, name: @vegetable.name, power: @vegetable.power } }, as: :json
    assert_response 200
  end

  test "should destroy vegetable" do
    assert_difference('Vegetable.count', -1) do
      delete vegetable_url(@vegetable), as: :json
    end

    assert_response 204
  end
end
