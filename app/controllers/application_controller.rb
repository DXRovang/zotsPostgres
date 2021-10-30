class ApplicationController < ActionController::Base
  #using helper_method allows current_user to be used in views
  helper_method :current_user

  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def require_login
    redirect_to "/login" if !current_user
  end
end
#testing