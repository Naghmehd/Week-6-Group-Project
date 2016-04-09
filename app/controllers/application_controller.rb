class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_action :authenticate_user

  def signed_in?
    session[:user_id].present?
  end
  helper_method :signed_in?

  def current_user
    return if session[:user_id].nil?
    @current_user ||= User.find(session[:user_id])
  end
  helper_method :current_user

  def authenticate_user
    if session[:user_id].nil?
      flash[:alert] = "Must be signed in"
      
    end
  end
end
