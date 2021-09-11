class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameter, if: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_inactive_sign_up_path_for(_resource)
    application_plan_index_path(application_id)
  end

  def index
  end

  def show
  end

  def guest_sign_in
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.nickname = 'GUEST'
      user.age = '99'
      user.gender = '男'
    end
    flash[:warning]
    sign_in user
    redirect_to plan_index_path, notice: 'ゲストユーザーとしてログインしました。'
  end

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
  end

  def configure_permitted_parameter
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[nickname age gender avatar])
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: %i[avatar nickname])
  end
end
