# Below are the routes for madmin
namespace :madmin do
  resources :services
  resources :book_reviews
  resources :posts
  namespace :active_storage do
    resources :variant_records
  end
  namespace :active_storage do
    resources :attachments
  end
  resources :announcements
  namespace :action_text do
    resources :rich_texts
  end
  namespace :active_storage do
    resources :blobs
  end
  resources :notifications
  resources :books
  resources :users
  root to: "dashboard#show"
end
