require 'test_helper'

module Personas
  class CivilsControllerTest < ActionController::TestCase
    setup do
      @civil = civils(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:civils)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create civil" do
      assert_difference('Civil.count') do
        post :create, civil: @civil.attributes
      end
  
      assert_redirected_to civil_path(assigns(:civil))
    end
  
    test "should show civil" do
      get :show, id: @civil.to_param
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @civil.to_param
      assert_response :success
    end
  
    test "should update civil" do
      put :update, id: @civil.to_param, civil: @civil.attributes
      assert_redirected_to civil_path(assigns(:civil))
    end
  
    test "should destroy civil" do
      assert_difference('Civil.count', -1) do
        delete :destroy, id: @civil.to_param
      end
  
      assert_redirected_to civils_path
    end
  end
end
