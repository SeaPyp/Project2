class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    @user = User.find(session[:user_id])
  end

  def new
    @user = User.find(session[:user_id])
    @post = Post.new({user_id: session[:user_id]})
  end

  # def edit
  #   @post = Post.find(params[:id])
  # end

  #Create a new post
  def create
    @user = User.find(session[:user_id])
    @post = @user.posts.new(post_params)
    if @post.save
      redirect_to "/posts/#{@post.id}"
    else
      render :new
    end
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :image, :rating, :user_id, :wine_id)
  end
end
