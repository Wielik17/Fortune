require 'test_helper'

class FortunesControllerTest < ActionController::TestCase
  setup do
    @fortune = fortunes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fortunes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fortune" do
    assert_difference('Fortune.count') do
      post :create, fortune: @fortune.attributes
    end

    assert_redirected_to fortune_path(assigns(:fortune))
  end

  test "should show fortune" do
    get :show, id: @fortune.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fortune.to_param
    assert_response :success
  end

  test "should update fortune" do
    put :update, id: @fortune.to_param, fortune: @fortune.attributes
    assert_redirected_to fortune_path(assigns(:fortune))
  end

  test "should destroy fortune" do
    assert_difference('Fortune.count', -1) do
      delete :destroy, id: @fortune.to_param
    end

    assert_redirected_to fortunes_path
  end
end
