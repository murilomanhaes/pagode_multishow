class Recado < ActiveRecord::Base
  belongs_to :usuario
  before_create :definir_data

  def definir_data
    self.data = Date.today
  end
  
  validates :recado, :usuario_id, presence: true
    
  attr_accessible :data, :recado, :usuario_id
end
