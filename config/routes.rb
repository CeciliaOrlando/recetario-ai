Rails.application.routes.draw do
  get 'home/index'
    devise_for :users

    resources :recipes do  #crea rutas RESTful para el modelo Recipe
      resources :ingredients, only: [:index, :show, :new, :create, :edit, :update, :destroy] #crea rutas RESTful para el modelo Ingredient
    end

  root 'home#index'

  # get "up" => "rails/health#show", as: :rails_health_check

end
