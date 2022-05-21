Rails.application.routes.draw do
  devise_for :users
  # las notas estan dentro del contexto de las tasks, por lo que incidimos en este recurso
  resources :tasks do
    resources :notes, only: [:create], controller: 'tasks/notes'
  end
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tasks#index"
end
