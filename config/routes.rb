Rails.application.routes.draw do
  devise_for :users

  root 'articles#index'

  resources :articles do
    resources :comments
    resources :likes, only: [:create, :destroy]
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
