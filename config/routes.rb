Rails.application.routes.draw do

  root "cars#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cars do
    resources :reviews, only: [:new, :create]
  end

end
