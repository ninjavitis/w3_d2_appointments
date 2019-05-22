Rails.application.routes.draw do
  root "doctors#index"
  
  devise_for :users

  resources :patients
  resources :doctors do
    resources :appointments, only:[:index, :new, :create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
