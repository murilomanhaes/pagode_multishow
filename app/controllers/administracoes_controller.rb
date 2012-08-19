class AdministracoesController < ApplicationController
  def index
    @parceiros = Parceiro.all 
  end
  
  def alterar_deletar
    @parceiros = Parceiro.all 
  end
  
  def cadastrar
    @parceiros = Parceiro.all 
  end
  
  def consultar_relatorio
    @parceiros = Parceiro.all 
  end
end
