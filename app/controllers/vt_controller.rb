class VtController < ApplicationController
  before_action :set_vt, only: [:show, :edit, :update, :destroy]

  # GET /vt
  # GET /vt.json
  def index
    @vt = Vt.all
  end

  # GET /vt/1
  # GET /vt/1.json
  def show
  end

  # GET /vt/new
  def new
    @vt = Vt.new
  end

  # GET /vt/1/edit
  def edit
  end

  # POST /vt
  # POST /vt.json
  def create
    @vt = Vt.new(vt_params)

    respond_to do |format|
      if @vt.save
        format.html { redirect_to @vt, notice: 'Vt was successfully created.' }
        format.json { render :show, status: :created, location: @vt }
      else
        format.html { render :new }
        format.json { render json: @vt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vt/1
  # PATCH/PUT /vt/1.json
  def update
    respond_to do |format|
      if @vt.update(vt_params)
        format.html { redirect_to @vt, notice: 'Vt was successfully updated.' }
        format.json { render :show, status: :ok, location: @vt }
      else
        format.html { render :edit }
        format.json { render json: @vt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vt/1
  # DELETE /vt/1.json
  def destroy
    @vt.destroy
    respond_to do |format|
      format.html { redirect_to vt_index_url, notice: 'Vt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vt
      @vt = Vt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vt_params
      params.require(:vt).permit(:vt_numero, :empresa_id, :data_solicitacao, :solicitante, :analista, :servico, :uf_origem, :origem, :uf_destino, :destino, :popa, :popb, :resultado_vt, :justificativa_vt, :data_resultado, :comentario)
    end
end
