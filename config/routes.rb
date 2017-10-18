Rails.application.routes.draw do
  resources :sections do
    resources :food_items do
      resources :orders
    end
  end
  # get 'menu/index'

  root "home#index"
  get 'contact_us' => "home#contact_us"
  get 'menu' => "sections#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
