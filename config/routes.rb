Rails.application.routes.draw do
  resources :movies do
    resources :eggs
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
