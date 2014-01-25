require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the truth" do
  	u = User.new(name: "John", email: "user@name.com", password: 'password', password_confirmation: 'password')
	u.save
	u = User.new(name: "Petro", email: "user@name.com", password: 'password', password_confirmation: 'password')
	u.save
    assert User.count == 2
  end
end
