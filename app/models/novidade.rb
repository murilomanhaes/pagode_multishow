class Novidade < ActiveRecord::Base
  
  validates :data, :resumo, :conteudo, :titulo, presence: true
  
  attr_accessible :conteudo, :data, :resumo, :titulo
end
