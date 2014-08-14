require 'test_helper'

class LuggagesControllerTest < ActionController::TestCase
  setup do
    @luggage = luggages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:luggages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create luggage" do
    assert_difference('Luggage.count') do
      post :create, luggage: { comment: @luggage.comment, importance: @luggage.importance, name: @luggage.name, participant_id: @luggage.participant_id, price: @luggage.price, quantity: @luggage.quantity, taken_care_of: @luggage.taken_care_of, taken_care_of_by_id: @luggage.taken_care_of_by_id, trip_id: @luggage.trip_id }
    end

    assert_redirected_to luggage_path(assigns(:luggage))
  end

  test "should show luggage" do
    get :show, id: @luggage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @luggage
    assert_response :success
  end

  test "should update luggage" do
    patch :update, id: @luggage, luggage: { comment: @luggage.comment, importance: @luggage.importance, name: @luggage.name, participant_id: @luggage.participant_id, price: @luggage.price, quantity: @luggage.quantity, taken_care_of: @luggage.taken_care_of, taken_care_of_by_id: @luggage.taken_care_of_by_id, trip_id: @luggage.trip_id }
    assert_redirected_to luggage_path(assigns(:luggage))
  end

  test "should destroy luggage" do
    assert_difference('Luggage.count', -1) do
      delete :destroy, id: @luggage
    end

    assert_redirected_to luggages_path
  end
end
