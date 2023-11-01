require "test_helper"

class TranslationsControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    payload = { user_id: @user.id }
    token = JsonWebToken.encode(true, user_id: @user.id)
    headers = { "Authorization" => token }
    request.headers.merge!(headers)
  end

  test 'crete translation' do
    word = Words.random
    assert_difference('Translation.count') do
      post :create, params: { translation: { used_word: word[:s].sample, word_id: word[:id] } }, as: :json
    end
  end
end
