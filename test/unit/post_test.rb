require 'test_helper'

class PostTest < ActiveSupport::TestCase
  
  fixtures :posts, :categories
  
  def setup
    @post = posts(:fancy_post)
  end
  
  # Replace this with your real tests.
  test "the truth" do
    assert_instance_of Post, @post
  end
  
  test "post category" do
    assert @post.categories.first.title, "Special"
  end
end
