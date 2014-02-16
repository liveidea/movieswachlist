require 'test_helper'

class FilmMailerTest < ActionMailer::TestCase
  test "new" do
    mail = FilmMailer.new
    assert_equal "New", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
