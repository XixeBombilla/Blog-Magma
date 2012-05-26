require 'test_helper'

class ArticuloTest < ActiveSupport::TestCase
  def primer_articulo
    assert_not_nil(Articulo.first)
  end
end
