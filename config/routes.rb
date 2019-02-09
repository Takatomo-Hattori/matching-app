Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :users, only: %i(index show)
  resources :reaction, only: %i(create)

  resources :reaction, only: %i(index)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :matching, only: %i(index)
  resources :chat, only: %i(create show)

end
