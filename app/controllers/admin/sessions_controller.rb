class Admin::SessionsController < ApplicationController
  layout 'admin' # 管理画面用のレイアウトがある場合

  def new
  end

  def create
    admin_code = params[:admin_code]
    password   = params[:password]

    if admin_code == ENV['ADMIN_CODE'] && password == ENV['ADMIN_PASSWORD']
      session[:admin_logged_in] = true
      redirect_to admin_dashboard_path, notice: 'ログインしました'
    else
      flash.now[:alert] = '管理コードまたはパスワードが間違っています'
      render :new
    end
  end

  def destroy
    session.delete(:admin_logged_in)
    redirect_to admin_login_path, notice: 'ログアウトしました'
  end
end
