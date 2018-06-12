module Backoffice
  class AnalistasController < ApplicationController

#    before_action :authenticate_admin!
    before_action :set_analista, only: [:show, :edit, :update, :destroy]

    layout "backoffice"

    # GET /analistas
    # GET /analistas.json
    def index
      # @analistas = Analista.all
      @analistas = Analista.order(:nome)
    end

    # GET /analistas/1
    # GET /analistas/1.json
    def show
    end

    # GET /analistas/new
    def new
      @analista = Analista.new
    end

    # GET /analistas/1/edit
    def edit
    end

    # POST /analistas
    # POST /analistas.json
    def create
      @analista = Analista.new(analista_params)

      respond_to do |format|
        if @analista.save
          format.html { redirect_to @analista, notice: I18n.t('messages.created')  }
          format.json { render :show, status: :created, location: @analista }
        else
          format.html { render :new }
          format.json { render json: @analista.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /analistas/1
    # PATCH/PUT /analistas/1.json
    def update
      respond_to do |format|
        if @analista.update(analista_params)
          format.html { redirect_to @analista, notice: I18n.t('messages.updated')  }
          format.json { render :show, status: :ok, location: @analista }
        else
          format.html { render :edit }
          format.json { render json: @analista.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /analistas/1
    # DELETE /analistas/1.json
    def destroy
      @analista.destroy
      respond_to do |format|
        format.html { redirect_to analistas_url, notice: I18n.t('messages.destroyed')  }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_analista
        @analista = Analista.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def analista_params
        params.require(:analista).permit(:nome, :email, :regional_id, :fone_contato, :funcao)
      end
  end
end
