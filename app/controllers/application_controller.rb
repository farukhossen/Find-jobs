class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :admin_user, :authorize_admin
  before_action :configure_permitted_parameters, if: :devise_controller?
  #=================================
  private

  def admin_user
    @admin_user ||= Admin.find(session[:admin_id]) if session[:admin_id]
  end
  def authorize_admin
    if !admin_user
      redirect_to login_admin_index_url
    end
  end
  #==================================
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :firstname, :lastname, :phone, :gender) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :firstname, :lastname, :phone, :gender) }

  end
end
