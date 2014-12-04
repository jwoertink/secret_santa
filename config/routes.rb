Rails.application.routes.draw do
  resources :groups, only: [:index, :show]

  root 'site#index'
end
