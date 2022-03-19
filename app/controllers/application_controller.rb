class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def redirect_non_user
    redirect_to root_path if current_user.blank?
  end
end
