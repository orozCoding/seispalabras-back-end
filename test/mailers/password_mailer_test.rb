require "test_helper"

class PasswordMailerTest < ActionMailer::TestCase
  test "reset" do
    user = users(:one)
    mail = PasswordMailer.with(user: user).reset
    assert_equal "Reset your password at SeisPalabras.xyz", mail.subject
    assert_equal [...user.email], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
