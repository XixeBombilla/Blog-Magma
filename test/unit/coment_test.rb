require 'test_helper'

class ComentTest < ActiveSupport::TestCase

 test "campos_nada" do
    c = coments(:comentUno)
    asset !c.valid?, "Usuario o Comentario no validado"
 end
 
end
