class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end 
  
  def show
    @post = post.friendly.find(params[:id])
  end
end
