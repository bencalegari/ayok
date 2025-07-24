Rails.application.routes.draw do
  resources :songs, only: [ :index, :new, :create, :destroy ] do
    collection do
      get "search"
    end
  end
  get "up" => "rails/health#show", as: :rails_health_check # Returns 200 if the app boots with no exceptions, otherwise 500.
  # Defines the root path route ("/")
  root "songs#search"
end
