class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name gender])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name gender])
  end

  def after_sign_in_path_for(resource)
    user_path(current_user) # your path
  end

  def after_sign_up_path_for(resource)
    user_path(current_user) # your path
  end
end
