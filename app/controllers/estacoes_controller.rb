class EstacoesController < ApplicationController
  before_action :set_estacao, only: [:show, :edit, :update, :destroy]

  # GET /estacaes
  # GET /estacaes.json
  def index
    @estacoes = Estacao.all
  end

  # GET /estacaes/1
  # GET /estacaes/1.json
  def show
  end

  # GET /estacaes/new
  def new
    @estacao = Estacao.new
  end

  # GET /estacaes/1/edit
  def edit
  end

  # POST /estacaes
  # POST /estacaes.json
  def create
    @estacao = Estacao.new(estacao_params)

    respond_to do |format|
      if @estacao.save
        format.html { redirect_to @estacao, notice: 'Estacao was successfully created.' }
        format.json { render :show, status: :created, location: @estacao }
      else
        format.html { render :new }
        format.json { render json: @estacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estacaes/1
  # PATCH/PUT /estacaes/1.json
  def update
    respond_to do |format|
      if @estacao.update(estacao_params)
        format.html { redirect_to @estacao, notice: 'Estacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @estacao }
      else
        format.html { render :edit }
        format.json { render json: @estacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estacaes/1
  # DELETE /estacaes/1.json
  def destroy
    @estacao.destroy
    respond_to do |format|
      format.html { redirect_to estacaes_url, notice: 'Estacao was successfully destroyed.' }
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
      params.require(:estacao).permit(:estacao, :nome, :cidade, :status, :cedente, :tipo, :latitude, :longitude)
    end
end
