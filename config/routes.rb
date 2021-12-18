Rails.application.routes.draw do
  get 'events/index'

  devise_for :users, controllers: { registrations: 'users/registrations' , sessions: 'users/sessions'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :bubbles
resources :users
resources :events
resources :folders
resources :posts, except: [:new, :show]
get 'posts/:id/new' => 'posts#new', as:"new"
root "bubbles#top"

end
