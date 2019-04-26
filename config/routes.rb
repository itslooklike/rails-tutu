Rails.application.routes.draw do
  resources :railway_stations
  get 'welcome/index'
  root 'welcome#index'
end
