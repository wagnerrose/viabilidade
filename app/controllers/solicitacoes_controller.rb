class SolicitacoesController < ApplicationController
  before_action :set_solicitacao, only: [:show, :edit, :update, :destroy]

  # GET /solicitacaes
  # GET /solicitacaes.json
  def index
    @solicitacoes = Solicitacao.all
  end

  # GET /solicitacaes/1
  # GET /solicitacaes/1.json
  def show
  end

  # GET /solicitacaes/new
  def new
    @solicitacao = Solicitacao.new
    empresa_options_for_select
    solicitante_options_for_select
    analista_options_for_select
    servico_options_for_select
    uf_options_for_select
  end

  # GET /solicitacaes/1/edit
  def edit
    empresa_options_for_select
    solicitante_options_for_select
    analista_options_for_select
    servico_options_for_select
    uf_options_for_select 
  end

  # POST /solicitacaes
  # POST /solicitacaes.json
  def create
    @solicitacao = Solicitacao.new(solicitacao_params)

    respond_to do |format|
      if @solicitacao.save
        format.html { redirect_to @solicitacao, notice: 'Solicitacao was successfully created.' }
        format.json { render :show, status: :created, location: @solicitacao }
      else
        format.html { render :new }
        format.json { render json: @solicitacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitacaes/1
  # PATCH/PUT /solicitacaes/1.json
  def update
    respond_to do |format|
      if @solicitacao.update(solicitacao_params)
        format.html { redirect_to @solicitacao, notice: 'Solicitacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @solicitacao }
      else
        format.html { render :edit }
        format.json { render json: @solicitacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitacaes/1
  # DELETE /solicitacaes/1.json
  def destroy
    @solicitacao.destroy
    respond_to do |format|
      format.html { redirect_to solicitacoes_url, notice: 'Solicitacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitacao
      @solicitacao = Solicitacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitacao_params
      params.require(:solicitacao).permit(:numero_vt, :empresa_id, :data_solicitacao, :solicitante, :analista, :servico, :banda, :endereco_a, :localidade_a, :uf_a, :endereco_b, :localidade_b, :uf_b, :resultado_vt)
    end
    # pesquisa das empresas para o select
    def empresa_options_for_select
      @empresa_options_for_select = Empresa.all
    end
    # pesquisa dos solicitantes de Viabilidades para o select
    def solicitante_options_for_select
      @solicitante_options_for_select = Analista.all.order(:nome)
    end
    # pesquisa de analistas de Viabilidades para o select
    def analista_options_for_select
      @analista_options_for_select = Analista.where(funcao: "Eng. Comercial").order(:nome)      
    end
    # pesquisa dos Tipos de Serviços para o select    
    def servico_options_for_select 
      @servico_options_for_select = Servico.order(:nome)
    end
    # pesquisa das UFs disponiveis para o select
    def uf_options_for_select
      @uf_options_for_select = Uf.order(:sigla)
    end
end
