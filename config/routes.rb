Rails.application.routes.draw do
  resources :food_items
  get 'menu/index'

  root "home#index"
  get 'contact_us' => "home#contact_us"
  get 'menu' => "menu#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
