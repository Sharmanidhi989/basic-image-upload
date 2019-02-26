Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'
  get 'welcome/index'

  devise_for :users
  resources :articles
  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/pages/:page" => "pages#show"  
  namespace :admin do
    resources :articles
  end 

  resources :articles do
    resources :comments
  end
end
