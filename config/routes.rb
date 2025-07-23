Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check # Returns 200 if the app boots with no exceptions, otherwise 500.
  # Defines the root path route ("/")
  # root "posts#index"
end
