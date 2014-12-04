Rails.application.routes.draw do
  resources :groups, only: [:index, :show]
  resources :participants, only: [:create]

  root 'site#index'
end
