class Coment < ActiveRecord::Base
  belongs_to :articulo
  attr_accessible :comentario, :usuario
end
