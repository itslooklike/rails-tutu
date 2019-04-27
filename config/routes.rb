Rails.application.routes.draw do
  resources :trains, :railway_stations, :routes

  get 'welcome/index'
  root 'welcome#index'
end
