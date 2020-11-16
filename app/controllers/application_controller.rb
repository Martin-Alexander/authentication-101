class ApplicationController < ActionController::Base
  before_action :authenticate_user! # `authenticate_user!` it redirects to the sign up page if the user is not signed in
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
