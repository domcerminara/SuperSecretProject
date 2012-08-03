IPL::Application.routes.draw do
  resources :athletes

  match 'player/edit' => 'players#edit', :as => :edit_current_player

  match 'signup' => 'players#new', :as => :signup

  match 'logout' => 'sessions#destroy', :as => :logout

  match 'login' => 'sessions#new', :as => :login

  resources :sessions

  resources :players

  resources :games

  resources :matches

  resources :teams

  resources :houses

  root :to => 'players#new'

end
