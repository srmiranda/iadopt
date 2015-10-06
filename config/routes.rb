Rails.application.routes.draw do
  root 'homes#index'
  get 'welcome' => 'homes#show'

  get '/find_a_dog' => 'dogs#search'

  devise_for :users

  resources :dogs, only: [:index, :show, :edit, :update]

  resources :shelters, only: [:index, :show, :new, :create] do
    resources :dogs, only: [:new, :create]
  end

end
