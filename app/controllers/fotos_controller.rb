class FotosController < ApplicationController

  def index
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
  end

  def wandinho
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
  end
  
  def retorno2011
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
  end
  
  def fotos2011
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
  end
end    
