Rails.application.routes.draw do
  resources :tikets
  resources :users
  resources :routes
  resources :railway_stations
  resources :trains
  resources :wagons

  get 'welcome/index'
  root 'welcome#index'
end
