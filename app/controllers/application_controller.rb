class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  def after_inactive_sign_up_path_for(_resource)
    application_plan_index_path(application_id)
  end

  def index; end

  def show; end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[nickname age])
  end
end
