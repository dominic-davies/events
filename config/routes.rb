Rails.application.routes.draw do

  root "events#index"

  # use a ruby block here to nest
  resources :events do
    resources :registrations
  end
end
