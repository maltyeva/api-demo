require 'test_helper'

class ShopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop = shops(:one)
  end

  test "should get index" do
    get shops_url
    assert_response :success
  end

  test "should get new" do
    get new_shop_url
    assert_response :success
  end

  test "should create shop" do
    assert_difference('Shop.count') do
      post shops_url, params: { shop: { address: @shop.address, address_cn: @shop.address_cn, category: @shop.category, close_time: @shop.close_time, description: @shop.description, description_cn: @shop.description_cn, image_url: @shop.image_url, name: @shop.name, open_time: @shop.open_time, phone: @shop.phone } }
    end

    assert_redirected_to shop_url(Shop.last)
  end

  test "should show shop" do
    get shop_url(@shop)
    assert_response :success
  end

  test "should get edit" do
    get edit_shop_url(@shop)
    assert_response :success
  end

  test "should update shop" do
    patch shop_url(@shop), params: { shop: { address: @shop.address, address_cn: @shop.address_cn, category: @shop.category, close_time: @shop.close_time, description: @shop.description, description_cn: @shop.description_cn, image_url: @shop.image_url, name: @shop.name, open_time: @shop.open_time, phone: @shop.phone } }
    assert_redirected_to shop_url(@shop)
  end

  test "should destroy shop" do
    assert_difference('Shop.count', -1) do
      delete shop_url(@shop)
    end

    assert_redirected_to shops_url
  end
end
