class Agenda < ActiveRecord::Base
  validates :data, :descricao, :horario, :tipo, presence: true
   
  attr_accessible :data, :descricao, :horario, :tipo
end
