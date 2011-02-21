require 'test_helper'

class PostTagRelationsControllerTest < ActionController::TestCase
  setup do
    @post_tag_relation = post_tag_relations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_tag_relations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_tag_relation" do
    assert_difference('PostTagRelation.count') do
      post :create, :post_tag_relation => @post_tag_relation.attributes
    end

    assert_redirected_to post_tag_relation_path(assigns(:post_tag_relation))
  end

  test "should show post_tag_relation" do
    get :show, :id => @post_tag_relation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post_tag_relation.to_param
    assert_response :success
  end

  test "should update post_tag_relation" do
    put :update, :id => @post_tag_relation.to_param, :post_tag_relation => @post_tag_relation.attributes
    assert_redirected_to post_tag_relation_path(assigns(:post_tag_relation))
  end

  test "should destroy post_tag_relation" do
    assert_difference('PostTagRelation.count', -1) do
      delete :destroy, :id => @post_tag_relation.to_param
    end

    assert_redirected_to post_tag_relations_path
  end
end
