Rails.application.routes.draw do
  get 'tasks/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/tasks', to: 'tasks#index'
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  get 'tasks/new', to: 'tasks#create', as: :new_task
  post 'tasks', to: 'tasks#new'
  get '/tasks/:id', to: 'tasks#show', as: :task
  delete 'tasks/:id', to: 'tasks#delete'
end
