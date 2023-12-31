Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
    resources :admins   # Administradores
  end
  devise_for :users
  devise_for :admins, skip:  [:registrations]
 
  get 'home', to: 'site/welcome#index'

  root to: 'site/welcome#index'
end
