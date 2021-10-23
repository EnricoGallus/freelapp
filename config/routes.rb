require 'sidekiq/web'

Rails.application.routes.draw do
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'

  namespace :api do
    namespace :v1 do
      resources :books, param: :slug
      resources :book_reviews, only: %i[create destroy]
    end
  end

  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'

    namespace :madmin do
    end
  end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '*path', to: 'home#index', via: :all
end
