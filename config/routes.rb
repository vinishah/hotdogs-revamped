Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  post '/rate' => 'rater#create', :as => 'rate'

  devise_for :users, controllers: { :sessions => "users/sessions", :omniauth_callbacks => "users/omniauth_callbacks", :registrations => "registrations"}

  resources :users do
    resources :reviews
  end

  resources :messages
  resources :playdates
  resources :events
  resources :user_matches

  get '/', to: 'events#home', as: :home
  get 'users/:id/questionnaire', to: 'users#questionnaire', as: :questionnaire
  get '/suggestmedates', to: 'playdates#suggest', as: :suggest
  get '/getmedates', to: 'playdates#searchdates', as: :searchdates
  put 'users/:id/update_preferences', to: 'users#update_preferences', as: :update_preferences

  put 'users/:id/create_match', to: 'users#create_match', as: :create_match

  put 'user_matches/:id/accept_match', to: 'user_matches#accept_match', as: :accept_match
  put 'user_matches/:id/reject_match', to: 'user_matches#reject_match', as: :reject_match

  get 'events/:id/like_event', to: 'events#like_event', as: :like_event

  get 'events/:id/dislike_event', to: 'events#dislike_event', as: :dislike_event

  root 'events#home'

end
