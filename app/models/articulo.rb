class Articulo < ActiveRecord::Base
  belongs_to :tema
  attr_accessible :autor, :descripcion, :titulo, :tema_id
end
