Rails.application.routes.draw do
  # ToDo Domain
  resources :todos do
    resources :items
  end

  # Auth
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
