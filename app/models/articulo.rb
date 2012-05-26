class Articulo < ActiveRecord::Base
  belongs_to :tema
  has_many :coments
  attr_accessible :autor, :descripcion, :titulo, :tema_id
  
  validate :titulo, :presence => true
  validate :tema_id, :presence => true
  validate :autor, :presence => true
  validate :descripcion, :presence => true

end
