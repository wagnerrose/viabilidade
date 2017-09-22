module Backoffice
  class UsuariosController < ApplicationController

#    before_action :authenticate_admin!
    before_action :set_usuario, only: [:show, :edit, :update, :destroy]

    layout "backoffice"

    # GET /usuarios
    # GET /usuarios.json
    def index
      # @usuarios = usuario.all
      @usuarios = Usuario.order(:email)
    end

    # GET /usuarios/1
    # GET /usuarios/1.json
    def show
    end

    # GET /usuarios/new
    def new
      @usuario = Usuario.new
    end

    # GET /usuario/1/edit
    def edit
    end

    # POST /usuario
    # POST /usuario.json
    def create
      @usuario = Usuario.new(usuario_params)

      respond_to do |format|
        if @usuario.save
          format.html { redirect_to usuarios_path, notice: I18n.t('messages.created')  }
          format.json { render :show, status: :created, location: @usuario }
        else
          format.html { render :new }
          format.json { render json: @usuario.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /usuarios/1
    # PATCH/PUT /usuarios/1.json
    def update
      # permite apos editar, salvar sem a necessidade de alterar senha
      passwd = params[:usuario][:password]
      passwd_confirmation = params[:usuario][:password_confirmation]

      if passwd.blank? && passwd_confirmation.blank?
        params[:usuario].delete(:password)
        params[:usuario].delete(:password_confirmation)
      end
      ###
      respond_to do |format|
        if @usuario.update(usuario_params)
          format.html { redirect_to usuarios_path, notice: I18n.t('messages.updated')  }
          format.json { render :show, status: :ok, location: @usuario }
        else
          format.html { render :edit }
          format.json { render json: @usuario.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /usuarios/1
    # DELETE /usuarios/1.json
    def destroy
      @usuario.destroy
      respond_to do |format|
        format.html { redirect_to usuarios_path, notice: I18n.t('messages.destroyed')  }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_usuario
        @usuario = Usuario.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def usuario_params
        params.require(:usuario).permit(:email, :nome, :regra, :password, :password_confirmation)
      end
  end
end
