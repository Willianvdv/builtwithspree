require 'test_helper'

class WebshopsControllerTest < ActionController::TestCase
  test "index should render" do
    get :index
    assert_response :success
  end

  test 'index should assign webshop' do
    get :index
    assert_equal assigns(:webshops), [webshops(:webshop), webshops(:featured_webshop)]
  end

  test "index should assign the featured webshop" do
    get :index
    assert_equal assigns(:featured_webshop), webshops(:featured_webshop)
  end
end
