Rails.application.routes.draw do

  root 'tasks#index'
 
  get "menu" => "access#menu"
  get "login" => "access#new"
  delete "logout" => "access#destroy"
  resource :access, controller: "access", only: [:new, :create, :destroy] do
    member do
      get :menu
    end
  end

  match "about", to: "main#about", via: :get
  # match "hello", to: "main#hello", via: :get

  get 'main/index'

  resources :categories do
    member do
      get :delete
    end
  end
  
  resources :tasks do
    member do
      get :delete
    end
  end
  
  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/new'
  # get 'categories/edit'
  # get 'categories/delete'


  # get 'tasks/index'
  # get 'tasks/new'
  # get 'tasks/edit'
  # get 'tasks/show'
  # get 'tasks/delete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
