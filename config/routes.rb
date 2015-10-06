Rails.application.routes.draw do
  root 'homes#index'
  get 'welcome' => 'homes#show'

  get '/find_a_dog' => 'dogs#search'

  devise_for :users, controllers: { registrations: :registrations }

  resources :users, only: [:index, :show, :destroy]

  resources :dogs, only: [:index, :show, :edit, :update, :destroy]

  resources :shelters do
    resources :dogs, only: [:new, :create]
  end

end
