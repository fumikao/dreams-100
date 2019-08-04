Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'dreams#about'
  resources :users, only: [:index, :show]
  resources :dreams do
    put :sort
    get :about, on: :collection
  end

  post '/dreams/:dream_id/likes' => "likes#create"
  delete '/dreams/:dream_id/likes' => "likes#destroy"
end
