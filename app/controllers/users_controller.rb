class UsersController < ApplicationController
  skip_before_action :authenticate_user

  def index
    @user.User.all
  end

  def show
    @user = set_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Succesfully created an account signed in!"
      session[:user_id] = @user.id
    
    else
      render :new
    end
  end

  def edit
    @user = set_user
  end

  def update
    User.update(params[:id], user_params)
  end

  def destroy
    @user = set_user
    @user.destroy
  end

private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
