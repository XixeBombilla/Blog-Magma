class PublicController < ApplicationController
  def index
    @primerPost = Articulo.last
  end  
end
