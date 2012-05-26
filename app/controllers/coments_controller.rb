class ComentsController < ApplicationController
  def create
     @coment = Coment.new(params[:coment])
  
     respond_to do |format|
       if @coment.save
         format.html { redirect_to root_path, notice: 'Tema was successfully created.' }
       else
         format.html { render action: "public#index" }
       end
     end
   end
end
