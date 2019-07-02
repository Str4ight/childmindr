require 'test_helper'

class ReviewusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reviewuser = reviewusers(:one)
  end

  test "should get index" do
    get reviewusers_url
    assert_response :success
  end

  test "should get new" do
    get new_reviewuser_url
    assert_response :success
  end

  test "should create reviewuser" do
    assert_difference('Reviewuser.count') do
      post reviewusers_url, params: { reviewuser: { category_ratingclean_id: @reviewuser.category_ratingclean_id, content: @reviewuser.content, title: @reviewuser.title, user_id: @reviewuser.user_id } }
    end

    assert_redirected_to reviewuser_url(Reviewuser.last)
  end

  test "should show reviewuser" do
    get reviewuser_url(@reviewuser)
    assert_response :success
  end

  test "should get edit" do
    get edit_reviewuser_url(@reviewuser)
    assert_response :success
  end

  test "should update reviewuser" do
    patch reviewuser_url(@reviewuser), params: { reviewuser: { category_ratingclean_id: @reviewuser.category_ratingclean_id, content: @reviewuser.content, title: @reviewuser.title, user_id: @reviewuser.user_id } }
    assert_redirected_to reviewuser_url(@reviewuser)
  end

  test "should destroy reviewuser" do
    assert_difference('Reviewuser.count', -1) do
      delete reviewuser_url(@reviewuser)
    end

    assert_redirected_to reviewusers_url
  end
end
