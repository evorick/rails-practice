require 'test_helper'

class SquirrelsControllerTest < ActionController::TestCase
  setup do
    @squirrel = squirrels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:squirrels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create squirrel" do
    assert_difference('Squirrel.count') do
      post :create, squirrel: { age: @squirrel.age, breed: @squirrel.breed, name: @squirrel.name }
    end

    assert_redirected_to squirrel_path(assigns(:squirrel))
  end

  test "should show squirrel" do
    get :show, id: @squirrel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @squirrel
    assert_response :success
  end

  test "should update squirrel" do
    patch :update, id: @squirrel, squirrel: { age: @squirrel.age, breed: @squirrel.breed, name: @squirrel.name }
    assert_redirected_to squirrel_path(assigns(:squirrel))
  end

  test "should destroy squirrel" do
    assert_difference('Squirrel.count', -1) do
      delete :destroy, id: @squirrel
    end

    assert_redirected_to squirrels_path
  end
end
