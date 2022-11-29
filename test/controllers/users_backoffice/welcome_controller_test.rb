require 'test_helper'

class UsersBackoffice::WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_welcome_index_url
    assert_response :success
  end

  test "should get rails" do
    get users_backoffice_welcome_rails_url
    assert_response :success
  end

  test "should get g" do
    get users_backoffice_welcome_g_url
    assert_response :success
  end

  test "should get controller" do
    get users_backoffice_welcome_controller_url
    assert_response :success
  end

  test "should get users_backoffice" do
    get users_backoffice_welcome_users_backoffice_url
    assert_response :success
  end

end
