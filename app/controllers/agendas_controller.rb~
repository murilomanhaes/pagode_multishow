class AgendasController < ApplicationController
  
  load_and_authorize_resource
  before_filter :authenticate_usuario!
  
  def index
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @agendas = Agenda.order('data asc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agendas }
    end
  end
  
  def alterar_deletar
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @agendas = Agenda.order('data asc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agendas }
    end
  end

  # GET /agendas/1
  # GET /agendas/1.json
  def show
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @agenda = Agenda.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agenda }
    end
  end

  # GET /agendas/new
  # GET /agendas/new.json
  def new
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @agenda = Agenda.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agenda }
    end
  end

  # GET /agendas/1/edit
  def edit
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @agenda = Agenda.find(params[:id])
  end

  # POST /agendas
  # POST /agendas.json
  def create
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @agenda = Agenda.new(params[:agenda])

    respond_to do |format|
      if @agenda.save
        format.html { redirect_to @agenda, notice: 'Agenda cadastrada com sucesso' }
        format.json { render json: @agenda, status: :created, location: @agenda }
      else
        format.html { render action: "new" }
        format.json { render json: @agenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /agendas/1
  # PUT /agendas/1.json
  def update
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @agenda = Agenda.find(params[:id])

    respond_to do |format|
      if @agenda.update_attributes(params[:agenda])
        format.html { redirect_to @agenda, notice: 'Agenda atualizada com sucesso' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @agenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agendas/1
  # DELETE /agendas/1.json
  def destroy
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @agenda = Agenda.find(params[:id])
    @agenda.destroy

    respond_to do |format|
      format.html { redirect_to alterar_deletar_agendas_url }
      format.json { head :no_content }
    end
  end
  
  def pagode
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @agendas = Agenda.where(:tipo => 'Multishow').order('data asc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agendas }
    end
  end
  
  def semmarra
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    @agendas = Agenda.where(:tipo => 'Sem Marra').order('data asc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agendas }
  end
  end
  
  def opcao
    @parceiros = Parceiro.all
    @novidades = Novidade.order('created_at').last(6) 
  end
  
  def consultar
    @parceiros = Parceiro.all 
    @novidades = Novidade.order('created_at').last(6) 
    
    data = params[:data].to_date
    puts data
    @agendas = Agenda.where('data = ?', data)
    render 'index'
  end
end
