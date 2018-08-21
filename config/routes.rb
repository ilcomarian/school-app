Rails.application.routes.draw do
  resources :student
  resources :instructor
  resources :course
  resources :cohort

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
