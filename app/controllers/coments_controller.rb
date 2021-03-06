class ComentsController < ApplicationController
  # GET /coments
  # GET /coments.json
  before_filter :authenticate_user!, :except => [:create]
  def index
    @coments = Coment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coments }
    end
  end

  # GET /coments/1
  # GET /coments/1.json
  

  # GET /coments/new
  # GET /coments/new.json
  def new
    @coment = Coment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coment }
    end
  end

  

  # POST /coments
  # POST /coments.json
  def create
    @coment = Coment.new(params[:coment])

    respond_to do |format|
      if @coment.save
        format.html { redirect_to articulo_path(@coment.articulo_id), notice: 'Gracias por Comentar !' }
        format.json { render json: @coment, status: :created, location: @coment }
      else
        format.html { redirect_to articulo_path(@coment.articulo_id), notice: 'Falta llenar los campos.'}
        format.json { render json: @coment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coments/1
  # PUT /coments/1.json
  def update
    @coment = Coment.find(params[:id])

    respond_to do |format|
      if @coment.update_attributes(params[:coment])
        format.html { redirect_to @coment, notice: 'Coment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coments/1
  # DELETE /coments/1.json
  def destroy
    @coment = Coment.find(params[:id])
    @coment.destroy

    respond_to do |format|
      format.html { redirect_to coments_url }
      format.json { head :no_content }
    end
  end
end
