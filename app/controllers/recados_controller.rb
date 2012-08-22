class RecadosController < ApplicationController
  
  load_and_authorize_resource
  before_filter :authenticate_usuario!
  
  def listar
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6) 
    
    @recados = Recado.all
  end
  
  def index
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6) 
    
    @recados = Recado.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recados }
    end
  end

  # GET /recados/1
  # GET /recados/1.json
  def show
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6) 
    
    @recado = Recado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recado }
    end
  end

  # GET /recados/new
  # GET /recados/new.json
  def new
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6) 
    
    @recado = Recado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recado }
    end
  end

  # GET /recados/1/edit
  def edit
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6) 
    
    @recado = Recado.find(params[:id])
  end

  # POST /recados
  # POST /recados.json
  def create
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6) 
    
    @recado = Recado.new(params[:recado].merge(:usuario_id => current_usuario.id))

    respond_to do |format|
      if @recado.save
        format.html { redirect_to @recado, notice: 'Recado cadastrado com sucesso' }
        format.json { render json: @recado, status: :created, location: @recado }
      else
        format.html { render action: "new" }
        format.json { render json: @recado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recados/1
  # PUT /recados/1.json
  def update
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6) 
    
    @recado = Recado.find(params[:id])

    respond_to do |format|
      if @recado.update_attributes(params[:recado])
        format.html { redirect_to @recado, notice: 'Recado atualizado com sucesso' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recados/1
  # DELETE /recados/1.json
  def destroy
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6) 
    
    @recado = Recado.find(params[:id])
    @recado.destroy

    respond_to do |format|
      format.html { redirect_to recados_url }
      format.json { head :no_content }
    end
  end
end
