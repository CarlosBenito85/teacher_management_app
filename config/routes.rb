Rails.application.routes.draw do
  root    'static_pages#home'
  get     '/login',               to: 'sessions#create'
  resources :teachers,            only: [:index, :new, :create] do
    member do
      get :vouted_teachers, 
          :teacher_voters, 
          :voted_courses
    end
  end
  resources :courses,             only: [:new, :create] do
    member do
      get :course_voters
    end
  end
  resources :course_registries,   only: [:index, :new, :create]
  resources :teacher_votes,       only: [:create]
  resources :course_votes,        only: [:create]
end
