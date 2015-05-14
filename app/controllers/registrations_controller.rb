class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    questionnaire_path(current_user)
  end
end