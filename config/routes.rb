Rails.application.routes.draw do
  resources :gigs, only: [:index]
  root to: "gigstacker#main"
  get "/photo_url", to: "gigs#index"
  get "/filter_gigs", to: "gigs#filter_gigs"

end
