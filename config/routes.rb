Rails.application.routes.draw do
  devise_for :users
  root "shifts#index"
  resources :shifts ,only: [:index, :new, :create] do
    # collection do
    #   post :index
    # end
    namespace :admin do
      resources :shifts, only: [:index, :new, :create, :show, :edit, :destroy]
    end
  end
end
