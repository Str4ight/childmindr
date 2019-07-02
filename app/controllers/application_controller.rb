class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_up_path_for(resources)
    user_path(current_user)
  end

  def after_sign_in_path_for(resources)
    user_path(current_user)
  end

  def after_sign_out_path_for(resources)
    root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email) }
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :firstname, :lastname, :password, :password_confirmation, :category_role_id, :category_segment_id, :terms, :category_service_id, :category_gender_id, :category_country_id, :category_town_id) }
  end
end
