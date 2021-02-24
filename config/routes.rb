Rails.application.routes.draw do
  resources :project_members
  resources :comments
  resources :tasks
  resources :columns
  resources :projects
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
