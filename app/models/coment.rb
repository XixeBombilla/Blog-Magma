class Coment < ActiveRecord::Base
  belongs_to :articulo
  attr_accessible :comentario, :usuario, :articulo_id
  
  validates :comentario, :usuario, presence: true
end
