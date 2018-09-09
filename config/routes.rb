Rails.application.routes.draw do
  resources :users, :lists, :items
end
