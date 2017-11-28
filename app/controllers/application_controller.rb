class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  # def sign_in(user)
  #   session[:user_id] = user.id
  # end
  #
  # def sign_out
  #   session.delete(:user_id)
  # end
  #
  # def current_user
  #   @current_user ||= User.find(session[:user_id])
  # end
  #
  # def logged_in?
  #   !current_user.nil?
  # end
end
