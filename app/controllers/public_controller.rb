class PublicController < ApplicationController
  def index
    @primerPost = Articulo.first
  end  
end
