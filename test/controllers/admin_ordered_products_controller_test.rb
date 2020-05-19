require 'test_helper'

class AdminOrderedProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_ordered_products_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_ordered_products_show_url
    assert_response :success
  end

end
