class AdministracoesController < ApplicationController
  def index
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
  end
  
  def alterar_deletar
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
  end
  
  def cadastrar
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
  end
  
  def consultar_relatorio
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
  end
end
