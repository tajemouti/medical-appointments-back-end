Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      resources :doctors, only: [:index, :show, :create, :destroy]
      resources :appointments, only: [:index, :create, :show, :destroy]
      post '/login', to: 'auth#login'
    end
  end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  root to: redirect('/api-docs')
  # Defines the root path route ("/")
  # root "posts#index"
end