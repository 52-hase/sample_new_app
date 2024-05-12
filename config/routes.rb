Rails.application.routes.draw do
  root 'studies#top'
  resources :studies, only: [:new, :create] do
    collection do
      post 'calculate'
    end
  end
end