class PostsController < ApplicationController
  def index
    @posts = Post.order('created_at DESC')
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def create
    post = Post.new(params[:post])
    
    if post.save
      redirect_to posts_path, :notice => 'You have created post successfully'
    else
      redirect_to posts_path, :error => 'Error occurred, please try again later'
    end
  end
  
  def new
    @post = Post.new
  end
  
  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      redirect_to posts_path, :notice => 'Post was successfully updated.'
    else
      redirect_to posts_path, :notice => 'Error occurred, please try again later'
    end
  end
end
