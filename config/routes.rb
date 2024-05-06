Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"

  get "about_us", to: "about_us#index"
  get "our_services", to: "our_services#index"
  get "portfolio", to: "portfolio#index"
  get "features", to: "features#index"
  get "testimonials", to: "testimonials#index"
  get "pricing", to: "pricing#index"
  get "contact", to: "contact#index"
  post "contact", to: "contact#create"
end
