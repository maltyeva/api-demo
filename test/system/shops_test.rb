require "application_system_test_case"

class ShopsTest < ApplicationSystemTestCase
  setup do
    @shop = shops(:one)
  end

  test "visiting the index" do
    visit shops_url
    assert_selector "h1", text: "Shops"
  end

  test "creating a Shop" do
    visit shops_url
    click_on "New Shop"

    fill_in "Address", with: @shop.address
    fill_in "Address cn", with: @shop.address_cn
    fill_in "Category", with: @shop.category
    fill_in "Close time", with: @shop.close_time
    fill_in "Description", with: @shop.description
    fill_in "Description cn", with: @shop.description_cn
    fill_in "Image url", with: @shop.image_url
    fill_in "Name", with: @shop.name
    fill_in "Open time", with: @shop.open_time
    fill_in "Phone", with: @shop.phone
    click_on "Create Shop"

    assert_text "Shop was successfully created"
    click_on "Back"
  end

  test "updating a Shop" do
    visit shops_url
    click_on "Edit", match: :first

    fill_in "Address", with: @shop.address
    fill_in "Address cn", with: @shop.address_cn
    fill_in "Category", with: @shop.category
    fill_in "Close time", with: @shop.close_time
    fill_in "Description", with: @shop.description
    fill_in "Description cn", with: @shop.description_cn
    fill_in "Image url", with: @shop.image_url
    fill_in "Name", with: @shop.name
    fill_in "Open time", with: @shop.open_time
    fill_in "Phone", with: @shop.phone
    click_on "Update Shop"

    assert_text "Shop was successfully updated"
    click_on "Back"
  end

  test "destroying a Shop" do
    visit shops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shop was successfully destroyed"
  end
end
