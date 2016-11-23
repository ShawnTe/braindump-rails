require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "full title helper" do
    assert_equal full_title,         "Braindump for Liberation!"
    assert_equal full_title("Help"), "Help | Braindump for Liberation!"
  end
end
