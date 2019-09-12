Rails.application.routes.draw do
  resources :retrogrades
  resources :horoscopes
  resources :signs
  resources :users
  get '/fetch_moon', to: 'retrogrades#fetch_moon'
  get '/fetch_books', to: 'retrogrades#fetch_books'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
