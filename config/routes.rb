Rails.application.routes.draw do
  resources :students, only: :index
  get '/student/new', to: 'students#new', as: 'new_student'
  post '/student/new', to: 'students#new'
  get '/student/create', to: 'students#create', as: 'create'
  get '/student/:id', to: 'students#show', as: 'student'

end