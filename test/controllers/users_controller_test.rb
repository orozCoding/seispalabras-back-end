require "test_helper"

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    payload = { user_id: @user.id }
    token = JsonWebToken.encode(true, user_id: @user.id)
    headers = { "Authorization" => token }
    request.headers.merge!(headers)
  end

  test 'should create user' do
    assert_difference('User.count') do
      post :create, as: :json, params: { user: { name: 'test', role: 'student', email: 'testw@test.test', password: 'testtest123', password_confirmation: 'testtest123', username: 'tester' } }
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
end
