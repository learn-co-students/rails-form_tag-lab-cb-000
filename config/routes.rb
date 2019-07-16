Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  get '/students/:id', to: 'students#show', as: 'student'
end

#The code above is essentially saying: Hey Rails! Connect the incoming request
#for my students resources only to the index, new, and create actions listed in my
#students_controller file. Then it will connect the request for students with a particular
#id number to the show action in the students_controller file and refer to this 
#path as simply /student instead of students/:id 
