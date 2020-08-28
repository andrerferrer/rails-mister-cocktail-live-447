Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [ :index, :show, :new, :create ] do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: :destroy
end
