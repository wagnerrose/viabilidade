module Backoffice
  class RegionaisController < ApplicationController

#    before_action :authenticate_admin!
    before_action :set_regional, only: [:show, :edit, :update, :destroy]

    layout "backoffice"

    # GET /regionais
    # GET /regionais.json
    def index
      @regionais = Regional.all
    end

    # GET /regionais/1
    # GET /regionais/1.json
    def show
    end

    # GET /regionais/new
    def new
      @regional = Regional.new
    end

    # GET /regionais/1/edit
    def edit
    end

    # POST /regionais
    # POST /regionais.json
    def create
      @regional = Regional.new(regional_params)

      respond_to do |format|
        if @regional.save
          format.html { redirect_to @regional, notice: I18n.t('messages.created') }
          format.json { render :show, status: :created, location: @regional }
        else
          format.html { render :new }
          format.json { render json: @regional.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /regionais/1
    # PATCH/PUT /regionais/1.json
    def update
      respond_to do |format|
        if @regional.update(regional_params)
          format.html { redirect_to @regional, notice: I18n.t('messages.updated')  }
          format.json { render :show, status: :ok, location: @regional }
        else
          format.html { render :edit }
          format.json { render json: @regional.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /regionais/1
    # DELETE /regionais/1.json
    def destroy
      @regional.destroy
      respond_to do |format|
        format.html { redirect_to regionais_url, notice: I18n.t('messages.destroyed')  }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_regional
        @regional = Regional.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def regional_params
        params.require(:regional).permit(:cod_regional, :nome)
      end
  end
end
