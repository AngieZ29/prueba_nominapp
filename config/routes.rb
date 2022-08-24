Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :arreglos, only: [:show, :index]

  get 'arreglos/create/:num', to: 'arreglos#create'
end
