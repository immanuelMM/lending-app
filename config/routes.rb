Rails.application.routes.draw do

  root to: 'borrowers#index'

  get 'home/borrower_index', to: 'home#borrower_index', as: 'index'

  resources :borrowers
 
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :invoices, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
