# app/controllers/admin/base_controller.rb
class Admin::BaseController < ApplicationController
  before_action :require_admin_login

  private

  def require_admin_login
    redirect_to admin_login_path, alert: "ログインしてください" unless session[:admin_logged_in]
  end
end
