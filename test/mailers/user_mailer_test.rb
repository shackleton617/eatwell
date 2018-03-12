require 'test_helper'

class UserMailerTest < ActionMailer::TestCase

    def redeem
    user = User.first
    UserMailer.redeem(user)
  end
end
