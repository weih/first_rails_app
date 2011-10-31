require 'test_helper'

class OrcsControllerTest < ActionController::TestCase
  setup do
    @orc = orcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orc" do
    assert_difference('Orc.count') do
      post :create, orc: @orc.attributes
    end

    assert_redirected_to orc_path(assigns(:orc))
  end

  test "should show orc" do
    get :show, id: @orc.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orc.to_param
    assert_response :success
  end

  test "should update orc" do
    put :update, id: @orc.to_param, orc: @orc.attributes
    assert_redirected_to orc_path(assigns(:orc))
  end

  test "should destroy orc" do
    assert_difference('Orc.count', -1) do
      delete :destroy, id: @orc.to_param
    end

    assert_redirected_to orcs_path
  end
end
