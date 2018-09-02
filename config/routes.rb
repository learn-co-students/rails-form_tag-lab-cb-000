Rails.application.routes.draw do
  resources :students
  #get '/students/:id', to: 'students#show', as: 'student'
end
