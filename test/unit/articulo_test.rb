require 'test_helper'

class ArticuloTest < ActiveSupport::TestCase
  test "responde_tema" do
     c = articulos(:uno)
     assert_respond_to c, :temas
  end
  
  test "contiene_coments" do
     c = articulos(:uno)
     assert_equal c.coments
  end
 
end
