Rails.application.routes.draw do
  #localhost3000の行先
  root to: 'tweets#index'
  resources :tweets, only: [:index, :new, :create]
end
