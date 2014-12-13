Rails.application.routes.draw do
root 'welcome#index'

resources :tours
resources :amenities
resources :users

end
