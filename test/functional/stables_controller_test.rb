require 'test_helper'

class StablesControllerTest < ActionController::TestCase
  setup do
    @stable = stables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stable" do
    assert_difference('Stable.count') do
      post :create, stable: { number: @stable.number, window: @stable.window }
    end

    assert_redirected_to stable_path(assigns(:stable))
  end

  test "should show stable" do
    get :show, id: @stable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stable
    assert_response :success
  end

  test "should update stable" do
    put :update, id: @stable, stable: { number: @stable.number, window: @stable.window }
    assert_redirected_to stable_path(assigns(:stable))
  end

  test "should destroy stable" do
    assert_difference('Stable.count', -1) do
      delete :destroy, id: @stable
    end

    assert_redirected_to stables_path
  end
end
