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

  test 'creating a translations update the user active word list' do
    old_words_list = @user.active_words_parsed
    word_to_use = old_words_list.sample

    assert_not word_to_use[:translated]

    post :create, params: { translation: { used_word: word_to_use[:s].sample, word_id: word_to_use[:id] } }, as: :json

    new_words_list = @user.reload.active_words_parsed
    user_word = new_words_list.find { |word| word[:id] == word_to_use[:id] }
    assert user_word[:translated]
  end
end
