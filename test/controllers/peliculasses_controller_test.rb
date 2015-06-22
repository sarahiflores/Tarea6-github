require 'test_helper'

class PeliculassesControllerTest < ActionController::TestCase
  setup do
    @peliculass = peliculasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peliculasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peliculass" do
    assert_difference('Peliculass.count') do
      post :create, peliculass: { NombredePeliculas: @peliculass.NombredePeliculas, rate: @peliculass.rate }
    end

    assert_redirected_to peliculass_path(assigns(:peliculass))
  end

  test "should show peliculass" do
    get :show, id: @peliculass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peliculass
    assert_response :success
  end

  test "should update peliculass" do
    patch :update, id: @peliculass, peliculass: { NombredePeliculas: @peliculass.NombredePeliculas, rate: @peliculass.rate }
    assert_redirected_to peliculass_path(assigns(:peliculass))
  end

  test "should destroy peliculass" do
    assert_difference('Peliculass.count', -1) do
      delete :destroy, id: @peliculass
    end

    assert_redirected_to peliculasses_path
  end
end
