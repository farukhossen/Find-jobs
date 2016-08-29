class AdminController < ApplicationController

  layout 'admin_layout'
  def login
    @admin = Admin.new
  end

  def verify_login
    admin = Admin.find_by(email: admin_params[:email])
    if admin && admin.password == admin_params[:password]
      session[:admin_id] = admin.id
      redirect_to categories_path
    else
      respond_to do |format|
        format.html{redirect_to login_admin_index_url}
      end
    end

  end

  def logout
    session[:admin_id] = nil
    redirect_to login_admin_index_url
  end
  private
  def admin_params
    params.require(:admin).permit(:email, :password)
  end
end
