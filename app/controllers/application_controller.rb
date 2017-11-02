class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :current_user

  def is_authenticated
    unless current_user
      flash[:danger] = "DANGER WILL ROBINSON (creds invalid)"
      redirect_to login_path
    end
  end

  def current_pet
    @current_pet ||= Pet.find_by_id(@pet[:id])
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

end
