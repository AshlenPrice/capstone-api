# frozen_string_literal: true
Rails.application.routes.draw do
  resources :reviews, except: [:new, :edit]
  resources :kitchens, except: [:new, :edit]
  resources :profiles, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  get '/userskitchen' => 'kitchens#userskitchen'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
