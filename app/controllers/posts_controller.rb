class PostsController < ApplicationController
  
  def index
    @posts = Post.where(state: :published)
  end 
  
  def show
    @post = find_post
  end
  
  private
  
  def find_post
    Post.friendly.find(params[:id])
  end
end
