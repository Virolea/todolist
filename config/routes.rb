Rails.application.routes.draw do
  # Lire toutes les todos
  get 'todos', to: 'todos#index'
  # Lire une todo particulière
  get 'todos/:id', to: 'todos#show'
  # ajouter une todo
  get 'todos/new', to: 'todos#new'
  post 'todos', to: 'todos#create'
  # éditer une todo
  get 'todos/:id/edit', to: 'todos#edit'
  patch 'todos/:id', to: 'todos#update'
  # détruire une todo
  delete 'todos/:id', to: 'todos#destroy'
end
