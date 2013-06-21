require 'test_helper'

class ShainsControllerTest < ActionController::TestCase
  setup do
    @shain = shains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shain" do
    assert_difference('Shain.count') do
      post :create, shain: { address1: @shain.address1, address2: @shain.address2, postNo: @shain.postNo, shainName: @shain.shainName, shainNameYomi: @shain.shainNameYomi, tel1: @shain.tel1, tel2: @shain.tel2 }
    end

    assert_redirected_to shain_path(assigns(:shain))
  end

  test "should show shain" do
    get :show, id: @shain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shain
    assert_response :success
  end

  test "should update shain" do
    patch :update, id: @shain, shain: { address1: @shain.address1, address2: @shain.address2, postNo: @shain.postNo, shainName: @shain.shainName, shainNameYomi: @shain.shainNameYomi, tel1: @shain.tel1, tel2: @shain.tel2 }
    assert_redirected_to shain_path(assigns(:shain))
  end

  test "should destroy shain" do
    assert_difference('Shain.count', -1) do
      delete :destroy, id: @shain
    end

    assert_redirected_to shains_path
  end
end
