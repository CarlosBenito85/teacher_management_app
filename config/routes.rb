Rails.application.routes.draw do
  root 'static_pages#home'
  get '/teachers', to: 'teachers#index'
  get '/new_teacher', to: 'teachers#new'
  post '/teachers', to: 'teachers#create'
end
