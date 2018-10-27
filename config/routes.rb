Rails.application.routes.draw do
  get 'welcome/Index'

  resources :sketches;

  root 'welcome#Index', as: 'home'
  # root 'sketches#destroy', as: 'destroy_sketch'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
