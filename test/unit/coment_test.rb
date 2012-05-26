require 'test_helper'

class ComentTest < ActiveSupport::TestCase

 def campos_nada
    c = Coment.new
    asset !c.valid?, "Usuario o Comentario no validado"
 end
end
