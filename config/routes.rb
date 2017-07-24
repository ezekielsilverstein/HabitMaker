Rails.application.routes.draw do
  # resources :responses
  resources :surveys do
    resources :responses
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
