Rails.application.routes.draw do
  devise_for :models
  # This is will change welcome to home/index
  get 'welcome/index'

  resources :articles do
    resources :comments
  end
  
  root 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
