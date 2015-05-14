class Users::RegistrationsController < Devise::RegistrationsController
 before_filter :configure_permitted_parameters, :only => [:create]

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :dog_name, :owner_name, :dog_age, :dog_bio, :owner_bio, :gender, :breed, :neutered, :address, :interest, :user_rating, :dog_picture, :owner_picture) }
  end

  def after_sign_up_path_for(resource)
    '/users/questionnaire'
  end

end
