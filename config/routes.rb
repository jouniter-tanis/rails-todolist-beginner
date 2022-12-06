Rails.application.routes.draw do
  resources :todo_records
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "todo_records#index"

  get 'todo_dashboard', to: 'todo_records#index', as: 'tai'
  get 'todo_show/:id', :to => 'todo_records#show'
  get 'todo_edit/:id', :to => 'todo_records#edit'
  get 'todo_update/:id', :to => 'todo_records#update'
  get 'todo_delete/:id', :to => 'todo_records#destroy'

end
