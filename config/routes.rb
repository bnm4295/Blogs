Rails.application.routes.draw do
  get 'blogs/index'

  resources :blogs
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
