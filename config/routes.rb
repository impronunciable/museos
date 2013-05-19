MuseoApp::Application.routes.draw do
  root :to => 'home#index'

  resources :museum, :only => [:show]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
