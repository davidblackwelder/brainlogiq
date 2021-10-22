Rails.application.routes.draw do
  resources :users, only: [:index, :edit, :show, :update]
  devise_for :users
  resources :courses
  root "static_pages#home"
  get 'static_pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
