Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pages#home'

  resources :projects, only: [:show, :index, :new, :create, :edit, :update]

  resources :software_projects, only: [:show, :index, :new, :create, :edit, :update]
  resources :blogs, only: [:show, :index, :new, :create, :edit, :update]
end
