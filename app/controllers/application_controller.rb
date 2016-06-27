class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 
  def after_sign_in_path_for(user)
    current_user_path
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
