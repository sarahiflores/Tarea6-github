require 'test_helper'

class PeliculasLsControllerTest < ActionController::TestCase
  setup do
    @peliculas_l = peliculas_ls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peliculas_ls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peliculas_l" do
    assert_difference('PeliculasL.count') do
      post :create, peliculas_l: { Nombredepel: @peliculas_l.Nombredepel }
    end

    assert_redirected_to peliculas_l_path(assigns(:peliculas_l))
  end

  test "should show peliculas_l" do
    get :show, id: @peliculas_l
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peliculas_l
    assert_response :success
  end

  test "should update peliculas_l" do
    patch :update, id: @peliculas_l, peliculas_l: { Nombredepel: @peliculas_l.Nombredepel }
    assert_redirected_to peliculas_l_path(assigns(:peliculas_l))
  end

  test "should destroy peliculas_l" do
    assert_difference('PeliculasL.count', -1) do
      delete :destroy, id: @peliculas_l
    end

    assert_redirected_to peliculas_ls_path
  end
end
