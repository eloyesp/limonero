require 'test_helper'

module Personas
  class TdocsControllerTest < ActionController::TestCase
    setup do
      @tdoc = tdocs(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:tdocs)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create tdoc" do
      assert_difference('Tdoc.count') do
        post :create, tdoc: @tdoc.attributes
      end
  
      assert_redirected_to tdoc_path(assigns(:tdoc))
    end
  
    test "should show tdoc" do
      get :show, id: @tdoc.to_param
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @tdoc.to_param
      assert_response :success
    end
  
    test "should update tdoc" do
      put :update, id: @tdoc.to_param, tdoc: @tdoc.attributes
      assert_redirected_to tdoc_path(assigns(:tdoc))
    end
  
    test "should destroy tdoc" do
      assert_difference('Tdoc.count', -1) do
        delete :destroy, id: @tdoc.to_param
      end
  
      assert_redirected_to tdocs_path
    end
  end
end
