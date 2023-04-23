Rails.application.routes.draw do
  devise_for :users
  root to: "shops#index"
  resources :shops do
    resources :interestings, only: [:index]
  end
end
