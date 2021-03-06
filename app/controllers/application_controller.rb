class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :date_of_birth, :gender])
  end

  def after_sign_in_path_for(resource)
    if current_user.current_goal.present?
      user_path(current_user)
    else
      goals_path
    end
  end
end
