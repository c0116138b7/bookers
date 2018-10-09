Rails.application.routes.draw do
  root to: 'blogs#index'
  # resources :blogs, only: [:show, :create, :edit]
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
