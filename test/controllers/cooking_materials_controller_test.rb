require 'test_helper'

class CookingMaterialsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cooking_materials_index_url
    assert_response :success
  end

  test "should get create" do
    get cooking_materials_create_url
    assert_response :success
  end

  test "should get edit" do
    get cooking_materials_edit_url
    assert_response :success
  end

  test "should get update" do
    get cooking_materials_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cooking_materials_destroy_url
    assert_response :success
  end

end
