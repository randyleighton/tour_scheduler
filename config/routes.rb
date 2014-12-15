Rails.application.routes.draw do
root 'welcome#index'

resources :amenities
resources :users
resources :tours do
  resources :users
  end

end
