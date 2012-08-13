PagodeMultishow::Application.routes.draw do
  
  devise_for :usuarios, controllers: { registrations: 'usuarios' }

  resources :usuarios

  root to: "home#index"
end
