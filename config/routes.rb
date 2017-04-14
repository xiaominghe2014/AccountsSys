Rails.application.routes.draw do
  
  resources :users
 
  get 'main/index'

  get 'login/index'

  root 'main#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
