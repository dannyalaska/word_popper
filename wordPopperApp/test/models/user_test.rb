require 'test_helper'

class UserTest < ActiveSupport::TestCase
    test "username should be present" do
      @user.username = " "
      assert_not @user.valid?
    end
end
