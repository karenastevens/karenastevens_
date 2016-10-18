require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Karena Stevens"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Karena Stevens"
  end

  test "should get portfolio" do
    get static_pages_portfolio_url
    assert_response :success
    assert_select "title", "Portfolio | Karena Stevens"
  end

  test "should get blog" do
    get static_pages_blog_url
    assert_response :success
    assert_select "title", "Blog | Karena Stevens"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | Karena Stevens"
  end

end
