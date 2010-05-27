class BlogController < ApplicationController
  def index
    # scoped_by_published(true)
    @posts = Post.posts_and_comments
  end
  
  def rss
    @posts = Post.posts_and_comments
    render :layout => false
    response.headers["Content-Type"] = "application/xml; charset=utf-8"
  end
end
