require 'test_helper'

class TradeLeadersControllerTest < ActionController::TestCase
  setup do
    @trade_leader = trade_leaders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trade_leaders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trade_leader" do
    assert_difference('TradeLeader.count') do
      post :create, :trade_leader => @trade_leader.attributes
    end

    assert_redirected_to trade_leader_path(assigns(:trade_leader))
  end

  test "should show trade_leader" do
    get :show, :id => @trade_leader.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @trade_leader.to_param
    assert_response :success
  end

  test "should update trade_leader" do
    put :update, :id => @trade_leader.to_param, :trade_leader => @trade_leader.attributes
    assert_redirected_to trade_leader_path(assigns(:trade_leader))
  end

  test "should destroy trade_leader" do
    assert_difference('TradeLeader.count', -1) do
      delete :destroy, :id => @trade_leader.to_param
    end

    assert_redirected_to trade_leaders_path
  end
end
