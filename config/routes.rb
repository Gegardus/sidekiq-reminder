Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => :sidekiq

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  resources :users
end
