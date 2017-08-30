class Backoffice::JustificativasController < ApplicationController

  before_action :authenticate_admin!
  before_action :set_justificativa, only: [:show, :edit, :update, :destroy]

  layout "backoffice"

  # GET /justificativas
  # GET /justificativas.json
  def index
    @justificativas = Justificativa.all
  end

  # GET /justificativas/1
  # GET /justificativas/1.json
  def show
  end

  # GET /justificativas/new
  def new
    @justificativa = Justificativa.new
  end

  # GET /justificativas/1/edit
  def edit
  end

  # POST /justificativas
  # POST /justificativas.json
  def create
    @justificativa = Justificativa.new(justificativa_params)

    respond_to do |format|
      if @justificativa.save
        format.html { redirect_to @justificativa, notice: I18n.t('messages.created') }
        format.json { render :show, status: :created, location: @justificativa }
      else
        format.html { render :new }
        format.json { render json: @justificativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /justificativas/1
  # PATCH/PUT /justificativas/1.json
  def update
    respond_to do |format|
      if @justificativa.update(justificativa_params)
        format.html { redirect_to @justificativa, notice: I18n.t('messages.updated')  }
        format.json { render :show, status: :ok, location: @justificativa }
      else
        format.html { render :edit }
        format.json { render json: @justificativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /justificativas/1
  # DELETE /justificativas/1.json
  def destroy
    @justificativa.destroy
    respond_to do |format|
      format.html { redirect_to justificativas_url, notice: I18n.t('messages.destroyed')  }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_justificativa
      @justificativa = Justificativa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def justificativa_params
      params.require(:justificativa).permit(:nome, :cod_justificativa, :tipo)
    end
end
