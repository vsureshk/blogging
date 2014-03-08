require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "the truth" do
    assert true
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_template :index
    assert_template layout: "layouts/application"
    assert_select 'title',"Blog"
    assert_not_nil assigns(:posts)
    assert_select 'ul.navigation' do
      assert_select 'li.menu_item'
    end  
  end

  # test "should create post" do
  #   assert_difference('Post.count') do
  #     post :create, post: {title: 'suresh raises'}
  #   end
  #   assert_redirected_to_post_path(assigns(:post))
  # end


  test "should get show" do
    get(:show,{'id' => '298486374'})
    assert_response :success
    
  end  
end
