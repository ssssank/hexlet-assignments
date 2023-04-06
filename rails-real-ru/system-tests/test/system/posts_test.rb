# frozen_string_literal: true

require 'application_system_test_case'

# BEGIN
class PostsTest < ApplicationSystemTestCase
  test "viewing the index" do
    visit posts_path
    assert_selector "h1", text: "Post"
  end
end
# END
