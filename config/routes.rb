Rails.application.routes.draw do
  resources :gig_stackers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "gigstacker#main"
end
