Rails.application.routes.draw do
  root    'static_pages#home'
  get     '/teachers',                  to: 'teachers#index'
  get     '/new_teacher',               to: 'teachers#new'
  post    '/teachers',                  to: 'teachers#create'
  get     '/course_registries',         to: 'course_registries#index'
  get     '/new_course_registry',       to: 'course_registries#new'
  get     '/login',                     to: 'sessions#create'
  get     '/new_course',                to: 'courses#new'
  post    '/courses',                   to: 'courses#create'
  post    '/course_registries',         to: 'course_registries#create'
end
