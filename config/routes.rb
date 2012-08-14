PagodeMultishow::Application.routes.draw do
  
  devise_for :usuarios, controllers: { registrations: 'usuarios' }

  resources :usuarios
  
  resources :historias
  resources :locais
  

  root to: "home#index"
end
