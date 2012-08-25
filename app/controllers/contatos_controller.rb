class ContatosController < ApplicationController

  load_and_authorize_resource

  def index
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @contatos = Contato.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contatos }
    end
  end

  # GET /contatos/1
  # GET /contatos/1.json
  def show
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @contato = Contato.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contato }
    end
  end

  # GET /contatos/new
  # GET /contatos/new.json
  def new
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @contato = Contato.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contato }
    end
  end

  # GET /contatos/1/edit
  def edit
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @contato = Contato.find(params[:id])
  end

  # POST /contatos
  # POST /contatos.json
  def create
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @contato = Contato.new(params[:contato])

    respond_to do |format|
      if @contato.save
        format.html { redirect_to @contato, notice: 'Contato enviado com sucesso' }
        format.json { render json: @contato, status: :created, location: @contato }
      else
        format.html { render action: "new" }
        format.json { render json: @contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contatos/1
  # PUT /contatos/1.json
  def update
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @contato = Contato.find(params[:id])

    respond_to do |format|
      if @contato.update_attributes(params[:contato])
        format.html { redirect_to @contato, notice: 'Contato atualizado com sucesso' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contatos/1
  # DELETE /contatos/1.json
  def destroy
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @contato = Contato.find(params[:id])
    @contato.destroy

    respond_to do |format|
      format.html { redirect_to contatos_url }
      format.json { head :no_content }
    end
  end
  
  def concluidos
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @contatos = Contato.all
  end
  
  def concluir
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @contato = Contato.find(params[:id])
  end

  def salvar_conclusao
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @contato = Contato.find(params[:id])

    respond_to do |format|
      if @contato.update_attributes(params[:contato])
        format.html { redirect_to @contato, notice: 'contato concluido com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "concluir" }
        format.json { render json: @suporte.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def admincontato
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
  end
end
