Rails.application.routes.draw do
  resources :book_authors
  resources :books
  resources :authors
  resources :publishers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
