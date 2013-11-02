Builtwithspree::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  devise_for :users
  resources :webshops

  root :to => "home#index"
end
