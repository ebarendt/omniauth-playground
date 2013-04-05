class ApplicationController < ActionController::Base
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @_current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  # before_filter :authenticate_twitter

  # def authenticate_twitter
  #   unless current_user
  #     redirect_to 
  #   end
  # end

end
