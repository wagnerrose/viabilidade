module Backoffice
  class EmpresasController < ApplicationController

#    before_action :authenticate_admin!
    before_action :set_empresa, only: [:show, :edit, :update, :destroy]
    before_action :set_regionais

    layout "backoffice"

    # GET /empresas
    # GET /empresas.json
    def index
      # @empresas = Empresa.all
      #@empresas = Empresa.order(:razao)
      respond_to do |format|
      format.html
      format.json { render json: EmpresasDatatable.new(view_context) }
      end
    end

    # GET /empresas/1
    # GET /empresas/1.json
    def show
    end

    # GET /empresas/new
    def new
      @empresa = Empresa.new
      @empresa.build_endereco
    end

    # GET /empresas/1/edit
    def edit
    end

    # POST /empresas
    # POST /empresas.json
    def create
      @empresa = Empresa.new(empresa_params)

      respond_to do |format|
        if @empresa.save
          format.html { redirect_to @empresa, notice: I18n.t('messages.created')  }
          format.json { render :show, status: :created, location: @empresa }
        else
          format.html { render :new }
          format.json { render json: @empresa.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /empresas/1
    # PATCH/PUT /empresas/1.json
    def update
      respond_to do |format|
        if @empresa.update(empresa_params)
          format.html { redirect_to @empresa, notice: I18n.t('messages.updated')  }
          format.json { render :show, status: :ok, location: @empresa }
        else
          format.html { render :edit }
          format.json { render json: @empresa.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /empresas/1
    # DELETE /empresas/1.json
    def destroy
      @empresa.destroy
      respond_to do |format|
        format.html { redirect_to empresas_url, notice: I18n.t('messages.destroyed')  }
        format.json { head :no_content }
      end
    end

    # Cria modal para apresentar dados de contatos da empresa
    def modal_contato
      respond_to do |format|
        format.html
        format.js
      end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa
      @empresa = Empresa.find(params[:id])
      @regionais = Regional.order(:nome)
      @uf= Uf.order(:nome)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_regionais
      @regionais = Regional.order(:nome).select(:nome)
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def empresa_params
      params.require(:empresa).permit(:razao,:nome_fantasia, :regional, :cnpj, :sap,
        endereco_attributes: [:id, :logradouro, :cidade, :uf, :cep, :_destroy],
        contatos_attributes: [:id, :nome, :telefone, :email, :obs, :_destroy])
    end
  end
end
