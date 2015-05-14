class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
   def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :owner_name
    devise_parameter_sanitizer.for(:sign_up) << :dog_name
    devise_parameter_sanitizer.for(:sign_up) << :address
    devise_parameter_sanitizer.for(:sign_up) << :dog_age
    devise_parameter_sanitizer.for(:sign_up) << :gender
    devise_parameter_sanitizer.for(:sign_up) << :dog_bio
    devise_parameter_sanitizer.for(:sign_up) << :breed
    devise_parameter_sanitizer.for(:sign_up) << :owner_picture
    devise_parameter_sanitizer.for(:sign_up) << :dog_picture
    devise_parameter_sanitizer.for(:sign_up) << :neutered
    
    devise_parameter_sanitizer.for(:account_update) << :owner_name
    devise_parameter_sanitizer.for(:account_update) << :dog_name
    devise_parameter_sanitizer.for(:account_update) << :address
    devise_parameter_sanitizer.for(:account_update) << :dog_age
    devise_parameter_sanitizer.for(:account_update) << :gender
    devise_parameter_sanitizer.for(:account_update) << :dog_bio
    devise_parameter_sanitizer.for(:account_update) << :breed
    devise_parameter_sanitizer.for(:account_update) << :owner_picture
    devise_parameter_sanitizer.for(:account_update) << :dog_picture
    devise_parameter_sanitizer.for(:account_update) << :neutered
 
  end

end
