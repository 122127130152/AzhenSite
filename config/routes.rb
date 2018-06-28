Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  # 控制器命名空间和路由
  namespace :admin do
    resources :sites, :articles
  end

  resources :articles

end
