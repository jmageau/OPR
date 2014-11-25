require 'test_helper'

class FinancialInstitutionsControllerTest < ActionController::TestCase
  setup do
    @financial_institution = financial_institutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:financial_institutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create financial_institution" do
    assert_difference('FinancialInstitution.count') do
      post :create, financial_institution: { name: @financial_institution.name }
    end

    assert_redirected_to financial_institution_path(assigns(:financial_institution))
  end

  test "should show financial_institution" do
    get :show, id: @financial_institution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @financial_institution
    assert_response :success
  end

  test "should update financial_institution" do
    put :update, id: @financial_institution, financial_institution: { name: @financial_institution.name }
    assert_redirected_to financial_institution_path(assigns(:financial_institution))
  end

  test "should destroy financial_institution" do
    assert_difference('FinancialInstitution.count', -1) do
      delete :destroy, id: @financial_institution
    end

    assert_redirected_to financial_institutions_path
  end
end
