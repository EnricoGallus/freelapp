require 'sidekiq/web'

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :posts
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  get '/dashboard', to: 'dashboard#index'

  Healthcheck.routes(self)

  namespace :api do
    namespace :v1 do
      resources :books, param: :slug
      resources :book_reviews, only: %i[create destroy]
    end
  end

  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
    draw :madmin
  end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations'}

  root to: 'home#index'
end
