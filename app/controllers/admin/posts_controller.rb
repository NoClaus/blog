class Admin::PostsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @posts = Post.all
  end 
  
  def new
    @post = Post.new
  end
  
  def create
    @course = Post.new(post_params)
    authorize([:admin, @post]) 
    if @post.save
      redirect_to admin_posts_path, notice: "post successfully created!"
    else
      flash[:post_errors] = @post.errors.full_messages
      render :new
    end
  end

  
  def show
    @post = find_post
    authorize([:admin, @post]) 
  end
  
  
  def edit
    @post = find_post
    authorize([:admin, @post]) 
  end
  
  def update
    @post = find_post
    authorize([:admin, @post])
    if @post.update(post_params)
      redirect_to admin_posts_path, notice: "post successfully updated!"
    else
      flash[:post_errors] = @post.errors.full_messages
      redirect_to admin_posts_path
    end
  end
  
  
  def destroy
    
    @post = find_post
    authorize([:admin, @post]) 
    @post.destroy
    redirect_to admin_posts_path, notice: "post successfully deleted!"
  end
  
  
  private
  
  def post_params
    params.require(:post).
      permit(:title, :description, :content, :state, :thumbnail)
  end
  
  def find_post
    Post.friendly.find(params[:id])
  end
end
