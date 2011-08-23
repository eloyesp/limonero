require 'test_helper'

module Personas
  class TaddressesControllerTest < ActionController::TestCase
    setup do
      @taddress = taddresses(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:taddresses)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create taddress" do
      assert_difference('Taddress.count') do
        post :create, taddress: @taddress.attributes
      end
  
      assert_redirected_to taddress_path(assigns(:taddress))
    end
  
    test "should show taddress" do
      get :show, id: @taddress.to_param
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @taddress.to_param
      assert_response :success
    end
  
    test "should update taddress" do
      put :update, id: @taddress.to_param, taddress: @taddress.attributes
      assert_redirected_to taddress_path(assigns(:taddress))
    end
  
    test "should destroy taddress" do
      assert_difference('Taddress.count', -1) do
        delete :destroy, id: @taddress.to_param
      end
  
      assert_redirected_to taddresses_path
    end
  end
end
