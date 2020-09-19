require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get books_index_url
    assert_response :success
  end

  test "should get add" do
    get books_add_url
    assert_response :success
  end

  test "should get update" do
    get books_update_url
    assert_response :success
  end

  test "should get show" do
    get books_show_url
    assert_response :success
  end

  test "should get delete" do
    get books_delete_url
    assert_response :success
  end

end
