class CommentsController < ApplicationController
  
  def index
  end

  def create
    @comment = Comment.create!(params["comment"])
    @post_id = params["comment"]["post_id"]    
  end
end
