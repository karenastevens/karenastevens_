require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Karena Stevens"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Karena Stevens"
  end

  test "should get portfolio" do
    get portfolio_path
    assert_response :success
    assert_select "title", "Portfolio | Karena Stevens"
  end

  test "should get blog" do
    get blog_path
    assert_response :success
    assert_select "title", "Blog | Karena Stevens"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Karena Stevens"
  end

end
