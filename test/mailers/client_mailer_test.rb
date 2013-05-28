require 'test_helper'

class ClientMailerTest < ActionMailer::TestCase
  test "welcome" do
    mail = ClientMailer.welcome
    assert_equal "Welcome", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
