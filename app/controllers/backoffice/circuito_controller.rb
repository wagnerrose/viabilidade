module Backoffice
  class CircuitoController < ApplicationController
    before_action :set_circuito, only: [:show, :edit, :update, :destroy]

    # GET /backoffice/circuitos
    # GET /backoffice/circuitos.json
    def index
      @circuitos = Circuito.all
    end

    # GET /backoffice/circuitos/1
    # GET /backoffice/circuitos/1.json
    def show
    end

    # GET /backoffice/circuitos/new
    def new
      @circuito = Circuito.new
    end

    # GET /backoffice/circuitos/1/edit
    def edit
    end

    # POST /backoffice/circuitos
    # POST /backoffice/circuitos.json
    def create
      @circuito = Circuito.new(circuito_params)

      respond_to do |format|
        if @circuito.save
          format.html { redirect_to @circuito, notice: 'Circuito was successfully created.' }
          format.json { render :show, status: :created, location: @circuito }
        else
          format.html { render :new }
          format.json { render json: @circuito.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /backoffice/circuitos/1
    # PATCH/PUT /backoffice/circuitos/1.json
    def update
      respond_to do |format|
        if @circuito.update(circuito_params)
          format.html { redirect_to @circuito, notice: 'Circuito was successfully updated.' }
          format.json { render :show, status: :ok, location: @circuito }
        else
          format.html { render :edit }
          format.json { render json: @circuito.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /backoffice/circuitos/1
    # DELETE /backoffice/circuitos/1.json
    def destroy
      @circuito.destroy
      respond_to do |format|
        format.html { redirect_to circuitos_url, notice: 'Circuito was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_circuito
        @circuito = Circuito.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def circuito_params
        params.require(:circuito).permit(:designacao, :descricao, :servico, :status,
                      :roteamento, :asn, :bandaContratada, :bandaAtivada,
                      :dataAtivacao, :contrato, :sap, :empresa)
      end
  end
end
