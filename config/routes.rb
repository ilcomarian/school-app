Rails.application.routes.draw do
  resources :students
  resources :instructors
  resources :courses
  resources :cohorts
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end