Rails.application.routes.draw do
  resources :films, only: [:index, :new, :create, :destroy]   
   root "resumes#index"  
  get 'films/index'
  get 'films/new'
  get 'films/create'
  get 'films/destroy'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
