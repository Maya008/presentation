Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'contact', to: 'static_pages#contact'
  get 'about' , to: 'static_pages#about'
  get 'toi', to: 'static_pages#toi', as: 'about_toi'
  get 'groupe', to: 'static_pages#groupe', as: 'about_ton_groupe'
  post '/', to: 'static_pages#create'

  get 'user/:Username', to: 'static_pages#show', as: 'show'
  get 'error', to: 'static_pages#error'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
