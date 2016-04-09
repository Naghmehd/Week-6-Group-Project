class Api::UsersController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @user = User.all
    render json: @user = User.all
  end

  def show
   @user = User.find(params[:id])
   render  json: @user

    rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }
  end

  def new
    render  json: @user = User.new
  end

  def create
    @user = User.new(user_params)
    render  json: @user = User.new(username: params[:user][:username][:password][:password_confirmation])

    if @user.save
      flash[:notice] = "Succesfully created an account signed in!"
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    render  json: @user
  rescue ActiveRecord::RecordNotFound
  render json: { message: "Not found", status: 404 }
  end

  def update
    @user = set_user
    @user.update(user_params)

    render  json: @user
  end


  def destroy
    @uer = set_user
    @user.destroy

    render json: @user.destroy

    rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
  end


end
