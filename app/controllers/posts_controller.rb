class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @user = User.find(session[:user_id])
  end

  def destroy
  end
end
