class Articulo < ActiveRecord::Base
  belongs_to :tema
  has_many :coments
  attr_accessible :autor, :descripcion, :titulo, :tema_id
end
