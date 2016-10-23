require 'test_helper'

class PostsIndexTest < ActionDispatch::IntegrationTest
  
  def setup 
    @post = posts(:orange)
  end

  test "index including pagination" do 
    get posts_path
    assert_template 'posts/index'
    Post.paginate(page: 1).each do |post|
    end
  end
end
