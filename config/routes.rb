C3svAppWelcome::Application.routes.draw do
  root 'users#new'

  resources :users, only: [:new, :create]
end
