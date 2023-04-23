Rails.application.routes.draw do
  devise_for :users
  root to: "shops#index"
  resources :shops do
    collection do
      get 'search'
    end
    resources :interestings, only: [:index]
  end
end
