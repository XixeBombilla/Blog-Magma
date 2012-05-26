class Tema < ActiveRecord::Base
  has_many :articulos
  attr_accessible :nombre, :propietario
end
