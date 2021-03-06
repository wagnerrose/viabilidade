module Backoffice
  class EstacoesController < ApplicationController

#    before_action :authenticate_admin!
    before_action :set_estacao, only: [:show, :edit, :update, :destroy]

    layout "backoffice"


    # GET /estacoes
    # GET /estacoes.json
    def index
      #@estacoes = Estacao.all
      respond_to do |format|
        format.html
        format.json { render json: EstacoesDatatable.new(view_context) }
      end
    end

    # GET /estacoes/1
    # GET /estacoes/1.json
    def show
      @equipamentos = @estacao.equipamentos.paginate(page: params[:page], per_page: 5)
      @circuitoDados = Circuitodado.where(estacaoAcesso: @estacao.pop).paginate(page: params[:page], per_page: 5)
    end

    # GET /estacoes/new
    def new
      @estacao = Estacao.new
    end

    # GET /estacoes/1/edit
    def edit
    end

    # POST /estacoes
    # POST /estacoes.json
    def create
      @estacao = Estacao.new(estacao_params)
      @estacao.pop = params[:estacao][:pop].upcase

      respond_to do |format|
        if @estacao.save
          format.html { redirect_to @estacao, notice: I18n.t('messages.created')  }
          format.json { render :show, status: :created, location: @estacao }
        else
          format.html { render :new }
          format.json { render json: @estacao.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /estacoes/1
    # PATCH/PUT /estacoes/1.json
    def update
      respond_to do |format|
        if @estacao.update(estacao_params)
          format.html { redirect_to @estacao, notice: I18n.t('messages.updated')  }
          format.json { render :show, status: :ok, location: @estacao }
        else
          format.html { render :edit }
          format.json { render json: @estacao.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /estacoes/1
    # DELETE /estacoes/1.json
    def destroy
      @estacao.destroy
      respond_to do |format|
        format.html { redirect_to estacoes_url, notice: I18n.t('messages.destroyed')  }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_estacao
        @estacao = Estacao.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def estacao_params
        params.require(:estacao).permit(:pop, :nome, :endereco, :cidade, :uf, :tipoEstacao, :cedente, :latitude, :longitude, :statusEstacao)
      end
  end
end
