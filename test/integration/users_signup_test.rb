require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      assert 'form[action="/signup"]'
      post '/users', params: { user: { name: "",
                                         email: "user@invalid",
                                         password: "123",
                                         password_confirmation: "456" }}
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors'
  end
end
