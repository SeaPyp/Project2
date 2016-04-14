class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.find(session[:user_id])
  end

  def welcome_user
    @users = User.all
    @user = User.find(session[:user_id])
  end

  def new
    @user = User.new
  end

  #Create a new User
  def create
    @user = User.new({
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    })

    if @user.save
      session[:user_id] = @user.id
      redirect_to "/users/welcome_user"
    else
      # flash ('user already exists')
      render :new

    end
  end
end
