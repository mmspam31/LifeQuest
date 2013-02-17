require 'test_helper'

class UserQuestsControllerTest < ActionController::TestCase
  setup do
    @user_quest = user_quests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_quests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_quest" do
    assert_difference('UserQuest.count') do
      post :create, user_quest: { complete: @user_quest.complete }
    end

    assert_redirected_to user_quest_path(assigns(:user_quest))
  end

  test "should show user_quest" do
    get :show, id: @user_quest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_quest
    assert_response :success
  end

  test "should update user_quest" do
    put :update, id: @user_quest, user_quest: { complete: @user_quest.complete }
    assert_redirected_to user_quest_path(assigns(:user_quest))
  end

  test "should destroy user_quest" do
    assert_difference('UserQuest.count', -1) do
      delete :destroy, id: @user_quest
    end

    assert_redirected_to user_quests_path
  end
end
