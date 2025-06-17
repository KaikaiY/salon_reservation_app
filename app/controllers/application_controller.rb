class ApplicationController < ActionController::Base
  # すでにあればスキップ（Devise設定）
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # 👇 これを追加！
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:admin_code])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:admin_code])
  end

  
  # すでにある場合、ここはそのままでOK
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
