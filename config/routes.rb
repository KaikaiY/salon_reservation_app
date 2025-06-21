Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    root to: "dashboard#index"  # 管理者用トップ
    get 'dashboard/index'
  end

  resources :reservations

  root to: "reservations#index"  # 一般ユーザー用トップ

  get "up" => "rails/health#show", as: :rails_health_check
end
