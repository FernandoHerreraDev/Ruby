Rails.application.routes.draw do
  root 'homepage#home'
  get 'about', to: 'homepage#about'
  resources :articles
end
