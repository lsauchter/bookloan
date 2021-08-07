Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # devise_for :users, controllers: { registrations: "registrations" }
  # match '/history', to: 'home#index', via: :all
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  constraints format: :json do
    resources :libraries, only: %i[index show create update destroy]
    resources :books, only: %i[index show create update destroy]
  end

  match "*path", to: 'home#index', via: :all
end
