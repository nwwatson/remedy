require 'test_helper'

module Remedy
  class DocumentsControllerTest < ActionController::TestCase
    setup do
      @routes = Engine.routes
    end

    test "should get show" do
      get :show
      assert_response :success
    end

    test "should get edit" do
      get :edit
      assert_response :success
    end

    test "should get create" do
      get :create
      assert_response :success
    end

    test "should get update" do
      get :update
      assert_response :success
    end

    test "should get destroy" do
      get :destroy
      assert_response :success
    end

  end
end
