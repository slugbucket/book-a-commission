Rails.application.routes.draw do
  resources :activity_types
  resources :commission_types
  resources :commissions
  resources :requests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'requests#new'
end
