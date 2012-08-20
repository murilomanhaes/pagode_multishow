class ParceirosController < ApplicationController
  # GET /parceiros
  # GET /parceiros.json
  def index
    @parceiros = Parceiro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parceiros }
    end
  end

  # GET /parceiros/1
  # GET /parceiros/1.json
  def show
    @parceiros = Parceiro.all 
    
    @parceiro = Parceiro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @parceiro }
    end
  end

  # GET /parceiros/new
  # GET /parceiros/new.json
  def new
    @parceiros = Parceiro.all 
    
    @parceiro = Parceiro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @parceiro }
    end
  end

  # GET /parceiros/1/edit
  def edit
    @parceiros = Parceiro.all 
    
    @parceiro = Parceiro.find(params[:id])
  end

  # POST /parceiros
  # POST /parceiros.json
  def create
    @parceiros = Parceiro.all 
    
    @parceiro = Parceiro.new(params[:parceiro])

    respond_to do |format|
      if @parceiro.save
        format.html { redirect_to @parceiro, notice: 'Parceiro cadastrado com sucesso' }
        format.json { render json: @parceiro, status: :created, location: @parceiro }
      else
        format.html { render action: "new" }
        format.json { render json: @parceiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /parceiros/1
  # PUT /parceiros/1.json
  def update
    @parceiros = Parceiro.all 
    
    @parceiro = Parceiro.find(params[:id])

    respond_to do |format|
      if @parceiro.update_attributes(params[:parceiro])
        format.html { redirect_to @parceiro, notice: 'Parceiro atualizado com sucesso' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @parceiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parceiros/1
  # DELETE /parceiros/1.json
  def destroy
    @parceiros = Parceiro.all 
    
    @parceiro = Parceiro.find(params[:id])
    @parceiro.destroy

    respond_to do |format|
      format.html { redirect_to parceiros_url }
      format.json { head :no_content }
    end
  end
  
  def alterar_deletar
    @parceiros = Parceiro.all 
    
    @parceiros = Parceiro.order('nome asc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agendas }
    end
  end
  
  def consultar
    @parceiros = Parceiro.all 
    
    nome = params[:nome]
    @parceiros = Parceiro.where('UPPER(nome) LIKE ?', "%#{nome.upcase}%")
    render 'index'
  end
end