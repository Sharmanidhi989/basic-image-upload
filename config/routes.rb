Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'
  get 'welcome/index'

  devise_for :users
  resources :articles, only: [:index, :show]
  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/pages/:page" => "pages#show"  
  
  resources :articles , only: [:index, :show] do
    resources :comments
  end
end
