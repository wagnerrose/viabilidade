module Backoffice
  class UfController < ApplicationController
#      before_action :authenticate_admin!
      before_action :set_uf, only: [:show, :edit, :update, :destroy]

      layout "backoffice"

    # GET /uf
    # GET /uf.json
    def index
      @uf = Uf.all.order(:sigla)
      #@uf = Uf.order(sort_column + " " + sort_direction) # ordenando tabela
    end

    # GET /uf/1
    # GET /uf/1.json
    def show
    end

    # GET /uf/new
    def new
      @uf = Uf.new
    end

    # GET /uf/1/edit
    def edit
    end

    # POST /uf
    # POST /uf.json
    def create
      @uf = Uf.new(uf_params)

      respond_to do |format|
        if @uf.save
          format.html { redirect_to @uf, notice: I18n.t('messages.created')  }
          format.json { render :show, status: :created, location: @uf }
        else
          format.html { render :new }
          format.json { render json: @uf.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /uf/1
    # PATCH/PUT /uf/1.json
    def update
      respond_to do |format|
        if @uf.update(uf_params)
          format.html { redirect_to @uf, notice: I18n.t('messages.updated')  }
          format.json { render :show, status: :ok, location: @uf }
        else
          format.html { render :edit }
          format.json { render json: @uf.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /uf/1
    # DELETE /uf/1.json
    def destroy
      @uf.destroy
      respond_to do |format|
        format.html { redirect_to uf_index_url, notice: I18n.t('messages.destroyed')  }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_uf
        @uf = Uf.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.

      def uf_params
        params.require(:uf).permit(:nome, :sigla)
      end
    end
end
