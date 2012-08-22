class HomeController < ApplicationController 

  def index 
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
	end 
end
