Rails.application.routes.draw do
  resources :students, only: :index
  resources :students, only: :new
  resources :students, only: :create

  get '/students/:id', to: 'students#show', as: 'student'
end
