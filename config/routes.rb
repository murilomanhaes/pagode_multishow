PagodeMultishow::Application.routes.draw do
  
  resources :contatos do
    member do
		  get :concluir
		  put :salvar_conclusao
	  end
	   
    collection do
      get :admincontato
      get :concluidos
    end
  end

  resources :recados do 
    collection do
      get :listar
      get :consultar
      get :alterar_deletar
      get :ver_todas
    end
  end

  resources :novidades do 
    collection do
      get :alterar_deletar
      get :consultar
    end
  end

  resources :parceiros do
    collection do
      get :alterar_deletar
      get :consultar
    end
  end
  
  resources :agendas do
    collection do
      get :opcao
      get :semmarra
      get :pagode
      get :alterar_deletar
      get :consultar
    end
  end
  
  resources :administracoes do 
     collection do
      get :alterar_deletar
      get :cadastrar
      get :consultar_relatorio
    end
  end
  
  devise_for :usuarios, controllers: { registrations: 'usuarios' }

  resources :usuarios
  
  resources :historias
  resources :locais
  

  root to: "home#index"
end
