Rails.application.routes.draw do

  resources :users, only: [:new,:create,:show]
  resources :blogs do
    collection do
      post :confirm
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
