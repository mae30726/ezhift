Rails.application.routes.draw do
  devise_for :users
  root "shifts#index"
  resources :shifts, only: [:index, :new, :create]
    namespace :admin do
      resources :shifts, only: [:index, :new, :create, :show, :edit, :destroy]
    end
  resources :shifts do
    collection do
      post :update_month
    end
  end
end
