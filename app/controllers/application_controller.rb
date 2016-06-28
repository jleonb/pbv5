class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def after_sign_in_path_for(user)
    user_path(current_user)
  end

  def after_sign_in_path_for(admin)
    root_path #your path
  end

  before_action :set_device_type

  private

  	def set_device_type
  		request.variant = :mobile if browser.device.mobile?
  	end

end
