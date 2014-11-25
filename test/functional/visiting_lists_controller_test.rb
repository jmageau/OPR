require 'test_helper'

class VisitingListsControllerTest < ActionController::TestCase
  setup do
    @visiting_list = visiting_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visiting_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visiting_list" do
    assert_difference('VisitingList.count') do
      post :create, visiting_list: { customer_id: @visiting_list.customer_id }
    end

    assert_redirected_to visiting_list_path(assigns(:visiting_list))
  end

  test "should show visiting_list" do
    get :show, id: @visiting_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visiting_list
    assert_response :success
  end

  test "should update visiting_list" do
    put :update, id: @visiting_list, visiting_list: { customer_id: @visiting_list.customer_id }
    assert_redirected_to visiting_list_path(assigns(:visiting_list))
  end

  test "should destroy visiting_list" do
    assert_difference('VisitingList.count', -1) do
      delete :destroy, id: @visiting_list
    end

    assert_redirected_to visiting_lists_path
  end
end
