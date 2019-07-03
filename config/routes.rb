Rails.application.routes.draw do
  devise_for :users

  root to: 'dreams#index'
  resources :users, only: [:index, :show]
  resources :dreams do
    put :sort
  end
end
