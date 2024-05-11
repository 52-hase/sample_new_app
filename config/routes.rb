Rails.application.routes.draw do
  root 'studies#top'
  post 'studies/calculate', to: 'studies#calculate'
  resources :studies, only: [:new, :create]
end