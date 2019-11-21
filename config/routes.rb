Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses
  end

  root to: 'cocktails#index'
end

# show => cocktails, ingredient
# index => cocktail
# new => cocktail, dose
# create => cocktail, dose
# edit => cocktail, dose
# update => cocktail, dose
# delete => cocktail, dose
