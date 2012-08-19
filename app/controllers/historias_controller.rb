class HistoriasController < ApplicationController 

  def index 
    @parceiros = Parceiro.all 
	end 
end
