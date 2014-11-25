require 'test_helper'

class SubsidiaryAgenciesControllerTest < ActionController::TestCase
  setup do
    @subsidiary_agency = subsidiary_agencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subsidiary_agencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subsidiary_agency" do
    assert_difference('SubsidiaryAgency.count') do
      post :create, subsidiary_agency: { location: @subsidiary_agency.location, name: @subsidiary_agency.name }
    end

    assert_redirected_to subsidiary_agency_path(assigns(:subsidiary_agency))
  end

  test "should show subsidiary_agency" do
    get :show, id: @subsidiary_agency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subsidiary_agency
    assert_response :success
  end

  test "should update subsidiary_agency" do
    put :update, id: @subsidiary_agency, subsidiary_agency: { location: @subsidiary_agency.location, name: @subsidiary_agency.name }
    assert_redirected_to subsidiary_agency_path(assigns(:subsidiary_agency))
  end

  test "should destroy subsidiary_agency" do
    assert_difference('SubsidiaryAgency.count', -1) do
      delete :destroy, id: @subsidiary_agency
    end

    assert_redirected_to subsidiary_agencies_path
  end
end
