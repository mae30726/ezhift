Rails.application.routes.draw do
  devise_for :users
  root "shifts#index"
  resources :shifts, only: [:index, :new, :create]
end
