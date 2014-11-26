require 'test_helper'

class PropertiesControllerTest < ActionController::TestCase
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post :create, property: { address: @property.address, deletion_status: @property.deletion_status, location: @property.location, number_of_bathrooms: @property.number_of_bathrooms, number_of_bedrooms: @property.number_of_bedrooms, number_of_other_rooms: @property.number_of_other_rooms, owner_id: @property.owner_id, property_type: @property.property_type, rent: @property.rent, subsidiary_agency_id: @property.subsidiary_agency_id }
    end

    assert_redirected_to property_path(assigns(:property))
  end

  test "should show property" do
    get :show, id: @property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property
    assert_response :success
  end

  test "should update property" do
    put :update, id: @property, property: { address: @property.address, deletion_status: @property.deletion_status, location: @property.location, number_of_bathrooms: @property.number_of_bathrooms, number_of_bedrooms: @property.number_of_bedrooms, number_of_other_rooms: @property.number_of_other_rooms, owner_id: @property.owner_id, property_type: @property.property_type, rent: @property.rent, subsidiary_agency_id: @property.subsidiary_agency_id }
    assert_redirected_to property_path(assigns(:property))
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete :destroy, id: @property
    end

    assert_redirected_to properties_path
  end
end
