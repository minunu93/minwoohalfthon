require 'test_helper'

class DiningsControllerTest < ActionController::TestCase
  setup do
    @dining = dinings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dinings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dining" do
    assert_difference('Dining.count') do
      post :create, dining: { content: @dining.content, food: @dining.food, location: @dining.location, name: @dining.name, phone: @dining.phone }
    end

    assert_redirected_to dining_path(assigns(:dining))
  end

  test "should show dining" do
    get :show, id: @dining
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dining
    assert_response :success
  end

  test "should update dining" do
    patch :update, id: @dining, dining: { content: @dining.content, food: @dining.food, location: @dining.location, name: @dining.name, phone: @dining.phone }
    assert_redirected_to dining_path(assigns(:dining))
  end

  test "should destroy dining" do
    assert_difference('Dining.count', -1) do
      delete :destroy, id: @dining
    end

    assert_redirected_to dinings_path
  end
end
