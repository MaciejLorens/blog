class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  def check_access
    redirect_to root_path unless current_user && current_user.is_admin?
  end
end
