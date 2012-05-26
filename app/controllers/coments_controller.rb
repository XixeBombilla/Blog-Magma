class ComentsController < ApplicationController
  before_filter :authenticate_user!
  def index
     @coments = Coment.all

     respond_to do |format|
       format.html # index.html.erb
       format.json { render json: @coments }
     end
   end
  def create
     @coment = Coment.new(params[:coment])
  
     respond_to do |format|
       if @coment.save
         format.html { redirect_to root_path, notice: 'Comentario Creado' }
       else
         format.html { render action: "public#index" }
       end
     end
   end
   
   def destroy
     @coment = Coment.find(params[:id])
     @coment.destroy

     respond_to do |format|
       format.html { redirect_to coments_url }
       format.json { head :no_content }
     end
   end
end
