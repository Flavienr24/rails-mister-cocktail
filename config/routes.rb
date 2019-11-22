Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :create, :new, :show, :destroy] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]

  delete 'cocktails/:id', to: 'cocktails#destroy', as: :cocktail_destroy

  root to: 'cocktails#index'
end
