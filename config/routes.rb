Rails.application.routes.draw do

  root 'welcome#index'

  resources :beers do
    resources :checkins, only: [:create, :destroy]
    resources :ratings, only: [:create, :destroy, :update, :edit]
  end

  resources :breweries

  resources :categories, only: [:show]

  resources :consumptions, only: [:index]

  resources :establishments

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

  resources :users

end
