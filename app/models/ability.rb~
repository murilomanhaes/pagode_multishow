class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user
    
    if user.tipo == "Administrador"
		  can :manage, :all
		else
		  can [:new, :create, :listar], Recado
		  can [:opcao, :pagode, :semmarra], Agenda
	    can :show, :all 
	  end
	end	  
end
