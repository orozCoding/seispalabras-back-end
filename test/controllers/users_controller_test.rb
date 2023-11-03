require "test_helper"

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:super_admin)
    payload = { user_id: @user.id }
    token = JsonWebToken.encode(true, user_id: @user.id)
    headers = { "Authorization" => token }
    request.headers.merge!(headers)
  end

  test 'should create user' do
    assert_difference('User.count') do
      post :create, as: :json, params: { user: { name: 'test', email: 'testw@test.test', password: 'testtest123', password_confirmation: 'testtest123', username: 'tester' } }
    end
  end

  test "should get index" do
    get :index, as: :json
    assert_response :success
  end

  test 'should show user' do
    get :show, as: :json, params: { id: @user }
    assert_response :success
    assert_equal @user.name, JSON.parse(response.body)['name']
  end

  test 'render todays words for user' do
    get :user_active_word_list, as: :json
    assert_response :success
    assert_equal JSON(@user.active_words_parsed), response.body
  end

  test 'render translated words for user' do
    get :user_translated_words, as: :json
    assert_response :success
    assert_equal JSON(@user.translated_words), response.body
  end
end
