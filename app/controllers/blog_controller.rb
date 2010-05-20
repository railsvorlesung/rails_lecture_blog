class BlogController < ApplicationController
  def index
    # scoped_by_published(true)
    @posts = Post.posts_and_comments
  end
end
