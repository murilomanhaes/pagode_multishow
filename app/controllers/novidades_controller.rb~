class NovidadesController < ApplicationController
 
  load_and_authorize_resource
  before_filter :authenticate_usuario!
  
  def index
    @parceiros = Parceiro.all
    
    @novidades = Novidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @novidades }
    end
  end

  # GET /novidades/1
  # GET /novidades/1.json
  def show
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6) 
    
    @novidade = Novidade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @novidade }
    end
  end

  # GET /novidades/new
  # GET /novidades/new.json
  def new
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6) 
    
    @novidade = Novidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @novidade }
    end
  end

  # GET /novidades/1/edit
  def edit
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6) 
    
    @novidade = Novidade.find(params[:id])
  end

  # POST /novidades
  # POST /novidades.json
  def create
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6) 
    
    @novidade = Novidade.new(params[:novidade])

    respond_to do |format|
      if @novidade.save
        format.html { redirect_to @novidade, notice: 'Novidade cadastrada com sucesso' }
        format.json { render json: @novidade, status: :created, location: @novidade }
      else
        format.html { render action: "new" }
        format.json { render json: @novidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /novidades/1
  # PUT /novidades/1.json
  def update
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6) 
    
    @novidade = Novidade.find(params[:id])

    respond_to do |format|
      if @novidade.update_attributes(params[:novidade])
        format.html { redirect_to @novidade, notice: 'Novidade atualizada com sucesso' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @novidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /novidades/1
  # DELETE /novidades/1.json
  def destroy
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6) 
    
    @novidade = Novidade.find(params[:id])
    @novidade.destroy

    respond_to do |format|
      format.html { redirect_to alterar_deletar_novidades_url }
      format.json { head :no_content }
    end
  end
  
  def consultar
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6)
    
    titulo = params[:titulo]
    @novidades = Novidade.where('upper(titulo) like ?', "%#{titulo.upcase}%")
    render 'index'
  end
  
  def alterar_deletar
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6)
  end
end
