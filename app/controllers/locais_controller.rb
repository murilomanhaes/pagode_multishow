class LocaisController < ApplicationController 

  def index 
    @parceiros = Parceiro.all 
	end 
end
