class Usuario < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :lockable, :timeoutable,
        :recoverable, :trackable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :bairro, 
  :cidade, :complemento, :data_nascimento, :endereco, :estado, :nome, 
  :sexo, :sobrenome, :telefone
  
end
