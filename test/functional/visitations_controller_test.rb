require 'test_helper'

class VisitationsControllerTest < ActionController::TestCase
  setup do
    @visitation = visitations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visitations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visitation" do
    assert_difference('Visitation.count') do
      post :create, visitation: { comments: @visitation.comments, date: @visitation.date, property_id: @visitation.property_id, time: @visitation.time }
    end

    assert_redirected_to visitation_path(assigns(:visitation))
  end

  test "should show visitation" do
    get :show, id: @visitation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visitation
    assert_response :success
  end

  test "should update visitation" do
    put :update, id: @visitation, visitation: { comments: @visitation.comments, date: @visitation.date, property_id: @visitation.property_id, time: @visitation.time }
    assert_redirected_to visitation_path(assigns(:visitation))
  end

  test "should destroy visitation" do
    assert_difference('Visitation.count', -1) do
      delete :destroy, id: @visitation
    end

    assert_redirected_to visitations_path
  end
end
