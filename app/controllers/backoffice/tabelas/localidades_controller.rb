class Backoffice::Tabelas::LocalidadesController < ApplicationController

  before_action :authenticate_admin!
  before_action :set_localidade, only: [:show, :edit, :update, :destroy]

  layout "backoffice"

  # GET /localidades
  # GET /localidades.json
  def index
    @localidades = Localidade.all
  end

  # GET /localidades/1
  # GET /localidades/1.json
  def show
  end

  # GET /localidades/new
  def new
    @localidade = Localidade.new
  end

  # GET /localidades/1/edit
  def edit
  end

  # POST /localidades
  # POST /localidades.json
  def create
    @localidade = Localidade.new(localidade_params)

    respond_to do |format|
      if @localidade.save
        format.html { redirect_to @localidade, notice: I18n.t('messages.created')  }
        format.json { render :show, status: :created, location: @localidade }
      else
        format.html { render :new }
        format.json { render json: @localidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /localidades/1
  # PATCH/PUT /localidades/1.json
  def update
    respond_to do |format|
      if @localidade.update(localidade_params)
        format.html { redirect_to @localidade, notice: I18n.t('messages.updated')  }
        format.json { render :show, status: :ok, location: @localidade }
      else
        format.html { render :edit }
        format.json { render json: @localidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /localidades/1
  # DELETE /localidades/1.json
  def destroy
    @localidade.destroy
    respond_to do |format|
      format.html { redirect_to localidades_url, notice: I18n.t('messages.destroyed')  }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_localidade
      @localidade = Localidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def localidade_params
      params.require(:localidade).permit(:localidade, :uf_id, :sigla_cnl, :cod_cnl, :municipio, :longitude, :latitude)

    end
end
