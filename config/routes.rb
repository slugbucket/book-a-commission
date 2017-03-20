Rails.application.routes.draw do
  resources :students
  resources :activity_writings
  resources :activity_teachings
  resources :activity_preparations
  resources :activity_paperworks
  resources :activity_others
  resources :activity_holidays
  resources :activity_developments
  resources :activity_commissions
  resources :activities
  resources :activity_types
  resources :commission_types
  resources :commissions
  resources :requests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'requests#new'
end
